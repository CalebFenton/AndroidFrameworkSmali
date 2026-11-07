.class public final Landroid/bluetooth/BluetoothLeBroadcastSettings;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeBroadcastSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBroadcastCode:[B

.field private final blacklist mBroadcastName:Ljava/lang/String;

.field private final blacklist mIsPublicBroadcast:Z

.field private final blacklist mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

.field private final blacklist mSubgroupSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 178
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeBroadcastSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ZLjava/lang/String;[BLandroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;)V
    .registers 6
    .param p1, "isPublicBroadcast"    # Z
    .param p2, "broadcastName"    # Ljava/lang/String;
    .param p3, "broadcastCode"    # [B
    .param p4, "publicBroadcastMetadata"    # Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "[B",
            "Landroid/bluetooth/BluetoothLeAudioContentMetadata;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p5, "subgroupSettings":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mIsPublicBroadcast:Z

    .line 52
    iput-object p2, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mBroadcastName:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mBroadcastCode:[B

    .line 54
    iput-object p4, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 55
    iput-object p5, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mSubgroupSettings:Ljava/util/List;

    .line 56
    return-void
.end method

.method synthetic constructor blacklist <init>(ZLjava/lang/String;[BLandroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;Landroid/bluetooth/BluetoothLeBroadcastSettings-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/bluetooth/BluetoothLeBroadcastSettings;-><init>(ZLjava/lang/String;[BLandroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 60
    instance-of v0, p1, Landroid/bluetooth/BluetoothLeBroadcastSettings;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 61
    return v1

    .line 63
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothLeBroadcastSettings;

    .line 64
    .local v0, "other":Landroid/bluetooth/BluetoothLeBroadcastSettings;
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mIsPublicBroadcast:Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSettings;->isPublicBroadcast()Z

    move-result v3

    if-ne v2, v3, :cond_43

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mBroadcastName:Ljava/lang/String;

    .line 65
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSettings;->getBroadcastName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mBroadcastCode:[B

    .line 66
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSettings;->getBroadcastCode()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 67
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSettings;->getPublicBroadcastMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mSubgroupSettings:Ljava/util/List;

    .line 68
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSettings;->getSubgroupSettings()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const/4 v1, 0x1

    goto :goto_44

    :cond_43
    nop

    .line 64
    :goto_44
    return v1
.end method

.method public whitelist getBroadcastCode()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 121
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mBroadcastCode:[B

    return-object v0
.end method

.method public whitelist getBroadcastName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 101
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mBroadcastName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPublicBroadcastMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 133
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    return-object v0
.end method

.method public whitelist getSubgroupSettings()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mSubgroupSettings:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 73
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mIsPublicBroadcast:Z

    .line 74
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mBroadcastName:Ljava/lang/String;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mBroadcastCode:[B

    .line 76
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mSubgroupSettings:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 73
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isPublicBroadcast()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 89
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mIsPublicBroadcast:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 165
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mIsPublicBroadcast:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 166
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mBroadcastName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mBroadcastCode:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 168
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mPublicBroadcastMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 169
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSettings;->mSubgroupSettings:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 170
    return-void
.end method

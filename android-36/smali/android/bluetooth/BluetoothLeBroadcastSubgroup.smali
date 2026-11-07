.class public final Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastSubgroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeBroadcastSubgroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist UNKNOWN_VALUE_PLACEHOLDER:I = -0x1


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

.field private final blacklist mCodecId:J

.field private final blacklist mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

.field private final blacklist mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 179
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JLandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;Landroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;)V
    .registers 6
    .param p1, "codecId"    # J
    .param p3, "codecSpecificConfig"    # Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .param p4, "contentMetadata"    # Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;",
            "Landroid/bluetooth/BluetoothLeAudioContentMetadata;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastChannel;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p5, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeBroadcastChannel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecId:J

    .line 50
    iput-object p3, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 51
    iput-object p4, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 52
    iput-object p5, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mChannels:Ljava/util/List;

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;Landroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;Landroid/bluetooth/BluetoothLeBroadcastSubgroup-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;-><init>(JLandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;Landroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 57
    instance-of v0, p1, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 58
    return v1

    .line 60
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    .line 61
    .local v0, "other":Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
    iget-wide v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecId:J

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getCodecId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_39

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 62
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getCodecSpecificConfig()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 63
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mChannels:Ljava/util/List;

    .line 64
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getChannels()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v1, 0x1

    goto :goto_3a

    :cond_39
    nop

    .line 61
    :goto_3a
    return v1
.end method

.method public whitelist getChannels()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastChannel;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mChannels:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getCodecId()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 95
    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecId:J

    return-wide v0
.end method

.method public whitelist getCodecSpecificConfig()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 107
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    return-object v0
.end method

.method public whitelist getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 118
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    return-object v0
.end method

.method public whitelist hasChannelPreference()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 132
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 69
    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mChannels:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothLeBroadcastSubgroup{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "codecId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", codecSpecificConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mChannels:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 167
    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 169
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 170
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->mChannels:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 171
    return-void
.end method

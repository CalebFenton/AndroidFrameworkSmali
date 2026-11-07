.class public final Landroid/bluetooth/BluetoothLeBroadcastChannel;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeBroadcastChannel;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist UNKNOWN_VALUE_PLACEHOLDER:I = -0x1


# instance fields
.field private final blacklist mChannelIndex:I

.field private final blacklist mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

.field private final blacklist mIsSelected:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 140
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastChannel$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeBroadcastChannel$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ZILandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)V
    .registers 4
    .param p1, "isSelected"    # Z
    .param p2, "channelIndex"    # I
    .param p3, "codecMetadata"    # Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mIsSelected:Z

    .line 48
    iput p2, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mChannelIndex:I

    .line 49
    iput-object p3, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 50
    return-void
.end method

.method synthetic constructor blacklist <init>(ZILandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;Landroid/bluetooth/BluetoothLeBroadcastChannel-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastChannel;-><init>(ZILandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 54
    instance-of v0, p1, Landroid/bluetooth/BluetoothLeBroadcastChannel;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 55
    return v1

    .line 57
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothLeBroadcastChannel;

    .line 58
    .local v0, "other":Landroid/bluetooth/BluetoothLeBroadcastChannel;
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mIsSelected:Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->isSelected()Z

    move-result v3

    if-ne v2, v3, :cond_27

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mChannelIndex:I

    .line 59
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->getChannelIndex()I

    move-result v3

    if-ne v2, v3, :cond_27

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 60
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->getCodecMetadata()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    nop

    .line 58
    :goto_28
    return v1
.end method

.method public whitelist getChannelIndex()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 98
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mChannelIndex:I

    return v0
.end method

.method public whitelist getCodecMetadata()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 109
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 65
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mIsSelected:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mChannelIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isSelected()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 87
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mIsSelected:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothLeBroadcastChannel{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mIsSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mChannelIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", codecMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

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

    .line 129
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mIsSelected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 130
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mChannelIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 132
    return-void
.end method

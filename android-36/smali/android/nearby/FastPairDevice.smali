.class public Landroid/nearby/FastPairDevice;
.super Landroid/nearby/NearbyDevice;
.source "FastPairDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/FastPairDevice$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nearby/FastPairDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBluetoothAddress:Ljava/lang/String;

.field private final blacklist mData:[B

.field private final blacklist mModelId:Ljava/lang/String;

.field private blacklist mTxPower:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Landroid/nearby/FastPairDevice$1;

    invoke-direct {v0}, Landroid/nearby/FastPairDevice$1;-><init>()V

    sput-object v0, Landroid/nearby/FastPairDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;[B)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "rssi"    # I
    .param p4, "txPower"    # I
    .param p5, "modelId"    # Ljava/lang/String;
    .param p6, "bluetoothAddress"    # Ljava/lang/String;
    .param p7, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .line 103
    .local p2, "mediums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/nearby/NearbyDevice;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 104
    iput p4, p0, Landroid/nearby/FastPairDevice;->mTxPower:I

    .line 105
    iput-object p5, p0, Landroid/nearby/FastPairDevice;->mModelId:Ljava/lang/String;

    .line 106
    iput-object p6, p0, Landroid/nearby/FastPairDevice;->mBluetoothAddress:Ljava/lang/String;

    .line 107
    iput-object p7, p0, Landroid/nearby/FastPairDevice;->mData:[B

    .line 108
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 179
    instance-of v0, p1, Landroid/nearby/FastPairDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 180
    move-object v0, p1

    check-cast v0, Landroid/nearby/FastPairDevice;

    .line 181
    .local v0, "otherDevice":Landroid/nearby/FastPairDevice;
    invoke-super {p0, p1}, Landroid/nearby/NearbyDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 182
    return v1

    .line 184
    :cond_f
    iget v2, p0, Landroid/nearby/FastPairDevice;->mTxPower:I

    iget v3, v0, Landroid/nearby/FastPairDevice;->mTxPower:I

    if-ne v2, v3, :cond_35

    iget-object v2, p0, Landroid/nearby/FastPairDevice;->mModelId:Ljava/lang/String;

    iget-object v3, v0, Landroid/nearby/FastPairDevice;->mModelId:Ljava/lang/String;

    .line 185
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroid/nearby/FastPairDevice;->mBluetoothAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/nearby/FastPairDevice;->mBluetoothAddress:Ljava/lang/String;

    .line 186
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroid/nearby/FastPairDevice;->mData:[B

    iget-object v3, v0, Landroid/nearby/FastPairDevice;->mData:[B

    .line 187
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 v1, 0x1

    goto :goto_36

    :cond_35
    nop

    .line 184
    :goto_36
    return v1

    .line 189
    .end local v0    # "otherDevice":Landroid/nearby/FastPairDevice;
    :cond_37
    return v1
.end method

.method public blacklist getBluetoothAddress()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/nearby/FastPairDevice;->mBluetoothAddress:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getData()[B
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/nearby/FastPairDevice;->mData:[B

    return-object v0
.end method

.method public blacklist getModelId()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/nearby/FastPairDevice;->mModelId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTxPower()I
    .registers 2

    .line 117
    iget v0, p0, Landroid/nearby/FastPairDevice;->mTxPower:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 194
    nop

    .line 195
    invoke-virtual {p0}, Landroid/nearby/FastPairDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nearby/FastPairDevice;->getMediums()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroid/nearby/FastPairDevice;->getRssi()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/nearby/FastPairDevice;->mTxPower:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/nearby/FastPairDevice;->mModelId:Ljava/lang/String;

    iget-object v5, p0, Landroid/nearby/FastPairDevice;->mBluetoothAddress:Ljava/lang/String;

    iget-object v6, p0, Landroid/nearby/FastPairDevice;->mData:[B

    .line 196
    invoke-static {v6}, Ljava/util/Arrays;->hashCode([B)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 194
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "FastPairDevice ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0}, Landroid/nearby/FastPairDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/nearby/FastPairDevice;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_29

    .line 163
    const-string v2, "name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_29
    const-string v2, "medium={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p0}, Landroid/nearby/FastPairDevice;->getMediums()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 167
    .local v3, "medium":I
    invoke-static {v3}, Landroid/nearby/FastPairDevice;->mediumToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .end local v3    # "medium":I
    goto :goto_36

    .line 169
    :cond_4e
    const-string v2, "} rssi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/nearby/FastPairDevice;->getRssi()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const-string v2, " txPower="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/nearby/FastPairDevice;->mTxPower:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    const-string v2, " modelId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/nearby/FastPairDevice;->mModelId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v2, " bluetoothAddress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/nearby/FastPairDevice;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 201
    invoke-virtual {p0}, Landroid/nearby/FastPairDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    move v3, v1

    goto :goto_b

    :cond_a
    move v3, v2

    :goto_b
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    if-eqz v0, :cond_13

    .line 204
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    :cond_13
    invoke-virtual {p0}, Landroid/nearby/FastPairDevice;->getMediums()Ljava/util/List;

    move-result-object v3

    .line 207
    .local v3, "mediums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 209
    .local v5, "medium":I
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    .end local v5    # "medium":I
    goto :goto_22

    .line 211
    :cond_36
    invoke-virtual {p0}, Landroid/nearby/FastPairDevice;->getRssi()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget v4, p0, Landroid/nearby/FastPairDevice;->mTxPower:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v4, p0, Landroid/nearby/FastPairDevice;->mModelId:Ljava/lang/String;

    if-nez v4, :cond_48

    move v4, v1

    goto :goto_49

    :cond_48
    move v4, v2

    :goto_49
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object v4, p0, Landroid/nearby/FastPairDevice;->mModelId:Ljava/lang/String;

    if-eqz v4, :cond_55

    .line 215
    iget-object v4, p0, Landroid/nearby/FastPairDevice;->mModelId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    :cond_55
    iget-object v4, p0, Landroid/nearby/FastPairDevice;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v4, p0, Landroid/nearby/FastPairDevice;->mData:[B

    if-nez v4, :cond_5f

    goto :goto_60

    :cond_5f
    move v1, v2

    :goto_60
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v1, p0, Landroid/nearby/FastPairDevice;->mData:[B

    if-eqz v1, :cond_72

    .line 220
    iget-object v1, p0, Landroid/nearby/FastPairDevice;->mData:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-object v1, p0, Landroid/nearby/FastPairDevice;->mData:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 223
    :cond_72
    return-void
.end method

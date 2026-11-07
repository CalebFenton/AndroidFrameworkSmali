.class public final Landroid/nearby/PresenceDevice;
.super Landroid/nearby/NearbyDevice;
.source "PresenceDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/PresenceDevice$Builder;,
        Landroid/nearby/PresenceDevice$DeviceType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nearby/PresenceDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDeviceId:Ljava/lang/String;

.field private final blacklist mDeviceImageUrl:Ljava/lang/String;

.field private final blacklist mDeviceType:I

.field private final blacklist mDiscoveryTimestampMillis:J

.field private final blacklist mEncryptedIdentity:[B

.field private final blacklist mExtendedProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nearby/DataElement;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSalt:[B

.field private final blacklist mSecretId:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 239
    new-instance v0, Landroid/nearby/PresenceDevice$1;

    invoke-direct {v0}, Landroid/nearby/PresenceDevice$1;-><init>()V

    sput-object v0, Landroid/nearby/PresenceDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;[B[B[BILjava/lang/String;JLjava/util/List;)V
    .registers 13
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p3, "rssi"    # I
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "salt"    # [B
    .param p6, "secretId"    # [B
    .param p7, "encryptedIdentity"    # [B
    .param p8, "deviceType"    # I
    .param p9, "deviceImageUrl"    # Ljava/lang/String;
    .param p10, "discoveryTimestampMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "[B[B[BI",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Landroid/nearby/DataElement;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p2, "mMediums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p12, "extendedProperties":Ljava/util/List;, "Ljava/util/List<Landroid/nearby/DataElement;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/nearby/NearbyDevice;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 191
    iput-object p4, p0, Landroid/nearby/PresenceDevice;->mDeviceId:Ljava/lang/String;

    .line 192
    iput-object p5, p0, Landroid/nearby/PresenceDevice;->mSalt:[B

    .line 193
    iput-object p6, p0, Landroid/nearby/PresenceDevice;->mSecretId:[B

    .line 194
    iput-object p7, p0, Landroid/nearby/PresenceDevice;->mEncryptedIdentity:[B

    .line 195
    iput p8, p0, Landroid/nearby/PresenceDevice;->mDeviceType:I

    .line 196
    iput-object p9, p0, Landroid/nearby/PresenceDevice;->mDeviceImageUrl:Ljava/lang/String;

    .line 197
    iput-wide p10, p0, Landroid/nearby/PresenceDevice;->mDiscoveryTimestampMillis:J

    .line 198
    iput-object p12, p0, Landroid/nearby/PresenceDevice;->mExtendedProperties:Ljava/util/List;

    .line 199
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;[B[B[BILjava/lang/String;JLjava/util/List;Landroid/nearby/PresenceDevice-IA;)V
    .registers 14

    invoke-direct/range {p0 .. p12}, Landroid/nearby/PresenceDevice;-><init>(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;[B[B[BILjava/lang/String;JLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 146
    instance-of v0, p1, Landroid/nearby/PresenceDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    .line 147
    move-object v0, p1

    check-cast v0, Landroid/nearby/PresenceDevice;

    .line 148
    .local v0, "otherDevice":Landroid/nearby/PresenceDevice;
    invoke-super {p0, v0}, Landroid/nearby/NearbyDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 149
    iget-object v2, p0, Landroid/nearby/PresenceDevice;->mSalt:[B

    iget-object v3, v0, Landroid/nearby/PresenceDevice;->mSalt:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, Landroid/nearby/PresenceDevice;->mSecretId:[B

    iget-object v3, v0, Landroid/nearby/PresenceDevice;->mSecretId:[B

    .line 150
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, Landroid/nearby/PresenceDevice;->mEncryptedIdentity:[B

    iget-object v3, v0, Landroid/nearby/PresenceDevice;->mEncryptedIdentity:[B

    .line 151
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, Landroid/nearby/PresenceDevice;->mDeviceId:Ljava/lang/String;

    iget-object v3, v0, Landroid/nearby/PresenceDevice;->mDeviceId:Ljava/lang/String;

    .line 152
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget v2, p0, Landroid/nearby/PresenceDevice;->mDeviceType:I

    iget v3, v0, Landroid/nearby/PresenceDevice;->mDeviceType:I

    if-ne v2, v3, :cond_5a

    iget-object v2, p0, Landroid/nearby/PresenceDevice;->mDeviceImageUrl:Ljava/lang/String;

    iget-object v3, v0, Landroid/nearby/PresenceDevice;->mDeviceImageUrl:Ljava/lang/String;

    .line 154
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-wide v2, p0, Landroid/nearby/PresenceDevice;->mDiscoveryTimestampMillis:J

    iget-wide v4, v0, Landroid/nearby/PresenceDevice;->mDiscoveryTimestampMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5a

    iget-object v2, p0, Landroid/nearby/PresenceDevice;->mExtendedProperties:Ljava/util/List;

    iget-object v3, v0, Landroid/nearby/PresenceDevice;->mExtendedProperties:Ljava/util/List;

    .line 156
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const/4 v1, 0x1

    goto :goto_5b

    :cond_5a
    nop

    .line 149
    :goto_5b
    return v1

    .line 159
    .end local v0    # "otherDevice":Landroid/nearby/PresenceDevice;
    :cond_5c
    return v1
.end method

.method public whitelist getDeviceId()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/nearby/PresenceDevice;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDeviceImageUrl()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/nearby/PresenceDevice;->mDeviceImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDeviceType()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/nearby/PresenceDevice;->mDeviceType:I

    return v0
.end method

.method public whitelist getDiscoveryTimestampMillis()J
    .registers 3

    .line 127
    iget-wide v0, p0, Landroid/nearby/PresenceDevice;->mDiscoveryTimestampMillis:J

    return-wide v0
.end method

.method public whitelist getEncryptedIdentity()[B
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/nearby/PresenceDevice;->mEncryptedIdentity:[B

    return-object v0
.end method

.method public whitelist getExtendedProperties()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/nearby/DataElement;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Landroid/nearby/PresenceDevice;->mExtendedProperties:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSalt()[B
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/nearby/PresenceDevice;->mSalt:[B

    return-object v0
.end method

.method public whitelist getSecretId()[B
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/nearby/PresenceDevice;->mSecretId:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 12

    .line 172
    nop

    .line 173
    invoke-virtual {p0}, Landroid/nearby/PresenceDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Landroid/nearby/PresenceDevice;->getMediums()Ljava/util/List;

    move-result-object v1

    .line 175
    invoke-virtual {p0}, Landroid/nearby/PresenceDevice;->getRssi()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/nearby/PresenceDevice;->mSalt:[B

    .line 176
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/nearby/PresenceDevice;->mSecretId:[B

    .line 177
    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/nearby/PresenceDevice;->mEncryptedIdentity:[B

    .line 178
    invoke-static {v5}, Ljava/util/Arrays;->hashCode([B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/nearby/PresenceDevice;->mDeviceId:Ljava/lang/String;

    iget v7, p0, Landroid/nearby/PresenceDevice;->mDeviceType:I

    .line 180
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Landroid/nearby/PresenceDevice;->mDeviceImageUrl:Ljava/lang/String;

    iget-wide v9, p0, Landroid/nearby/PresenceDevice;->mDiscoveryTimestampMillis:J

    .line 182
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v10, p0, Landroid/nearby/PresenceDevice;->mExtendedProperties:Ljava/util/List;

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 172
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 203
    invoke-virtual {p0}, Landroid/nearby/PresenceDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    move v3, v2

    goto :goto_b

    :cond_a
    move v3, v1

    :goto_b
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    if-eqz v0, :cond_13

    .line 206
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    :cond_13
    invoke-virtual {p0}, Landroid/nearby/PresenceDevice;->getMediums()Ljava/util/List;

    move-result-object v3

    .line 209
    .local v3, "mediums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
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

    .line 211
    .local v5, "medium":I
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    .end local v5    # "medium":I
    goto :goto_22

    .line 213
    :cond_36
    invoke-virtual {p0}, Landroid/nearby/PresenceDevice;->getRssi()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object v4, p0, Landroid/nearby/PresenceDevice;->mSalt:[B

    array-length v4, v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object v4, p0, Landroid/nearby/PresenceDevice;->mSalt:[B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 216
    iget-object v4, p0, Landroid/nearby/PresenceDevice;->mSecretId:[B

    array-length v4, v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-object v4, p0, Landroid/nearby/PresenceDevice;->mSecretId:[B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 218
    iget-object v4, p0, Landroid/nearby/PresenceDevice;->mEncryptedIdentity:[B

    array-length v4, v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v4, p0, Landroid/nearby/PresenceDevice;->mEncryptedIdentity:[B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 220
    iget-object v4, p0, Landroid/nearby/PresenceDevice;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget v4, p0, Landroid/nearby/PresenceDevice;->mDeviceType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v4, p0, Landroid/nearby/PresenceDevice;->mDeviceImageUrl:Ljava/lang/String;

    if-nez v4, :cond_6d

    move v1, v2

    :cond_6d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-object v1, p0, Landroid/nearby/PresenceDevice;->mDeviceImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_79

    .line 224
    iget-object v1, p0, Landroid/nearby/PresenceDevice;->mDeviceImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    :cond_79
    iget-wide v4, p0, Landroid/nearby/PresenceDevice;->mDiscoveryTimestampMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 227
    iget-object v1, p0, Landroid/nearby/PresenceDevice;->mExtendedProperties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget-object v1, p0, Landroid/nearby/PresenceDevice;->mExtendedProperties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nearby/DataElement;

    .line 229
    .local v4, "dataElement":Landroid/nearby/DataElement;
    invoke-virtual {p1, v4, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 230
    .end local v4    # "dataElement":Landroid/nearby/DataElement;
    goto :goto_8d

    .line 231
    :cond_9d
    return-void
.end method

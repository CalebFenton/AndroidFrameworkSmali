.class public final Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;
.super Ljava/lang/Object;
.source "BluetoothHearingAid.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHearingAid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdvertisementServiceData"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCapability:I

.field private final blacklist mTruncatedHiSyncId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 82
    const-class v0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->TAG:Ljava/lang/String;

    .line 189
    new-instance v0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 6
    .param p1, "capability"    # I
    .param p2, "truncatedHiSyncId"    # I

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget-object v0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capability:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " truncatedHiSyncId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput p1, p0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->mCapability:I

    .line 99
    iput p2, p0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->mTruncatedHiSyncId:I

    .line 100
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->mCapability:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->mTruncatedHiSyncId:I

    .line 116
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothHearingAid-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDeviceMode()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 109
    invoke-static {}, Landroid/bluetooth/BluetoothHearingAid;->-$$Nest$sfgetVDBG()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->TAG:Ljava/lang/String;

    const-string v1, "getDeviceMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_d
    iget v0, p0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->mCapability:I

    shr-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist getDeviceSide()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 125
    invoke-static {}, Landroid/bluetooth/BluetoothHearingAid;->-$$Nest$sfgetVDBG()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->TAG:Ljava/lang/String;

    const-string v1, "getDeviceSide()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_d
    iget v0, p0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->mCapability:I

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist getTruncatedHiSyncId()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 149
    invoke-static {}, Landroid/bluetooth/BluetoothHearingAid;->-$$Nest$sfgetVDBG()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTruncatedHiSyncId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->mTruncatedHiSyncId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_20
    iget v0, p0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->mTruncatedHiSyncId:I

    return v0
.end method

.method public whitelist isCsipSupported()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 138
    invoke-static {}, Landroid/bluetooth/BluetoothHearingAid;->-$$Nest$sfgetVDBG()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->TAG:Ljava/lang/String;

    const-string v1, "isCsipSupported()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_d
    iget v0, p0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->mCapability:I

    shr-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public whitelist isInPairWith(Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;)Z
    .registers 8
    .param p1, "data"    # Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 164
    invoke-static {}, Landroid/bluetooth/BluetoothHearingAid;->-$$Nest$sfgetVDBG()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->TAG:Ljava/lang/String;

    const-string v1, "isInPairWith()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_d
    const/4 v0, 0x0

    if-nez p1, :cond_11

    .line 166
    return v0

    .line 169
    :cond_11
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->isCsipSupported()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_20

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->isCsipSupported()Z

    move-result v1

    if-eqz v1, :cond_20

    move v1, v2

    goto :goto_21

    :cond_20
    move v1, v0

    .line 170
    .local v1, "bothSupportCsip":Z
    :goto_21
    nop

    .line 171
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->getDeviceSide()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3b

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->getDeviceSide()I

    move-result v3

    if-eq v3, v4, :cond_3b

    .line 172
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->getDeviceSide()I

    move-result v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->getDeviceSide()I

    move-result v4

    if-eq v3, v4, :cond_3b

    move v3, v2

    goto :goto_3c

    :cond_3b
    move v3, v0

    .line 173
    .local v3, "isDifferentSide":Z
    :goto_3c
    iget v4, p0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->mTruncatedHiSyncId:I

    iget v5, p1, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->mTruncatedHiSyncId:I

    if-ne v4, v5, :cond_44

    move v4, v2

    goto :goto_45

    :cond_44
    move v4, v0

    .line 174
    .local v4, "isSameTruncatedHiSyncId":Z
    :goto_45
    if-eqz v1, :cond_4c

    if-eqz v3, :cond_4c

    if-eqz v4, :cond_4c

    move v0, v2

    :cond_4c
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 185
    iget v0, p0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->mCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget v0, p0, Landroid/bluetooth/BluetoothHearingAid$AdvertisementServiceData;->mTruncatedHiSyncId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    return-void
.end method

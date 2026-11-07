.class public final Landroid/ranging/uwb/UwbRangingParams;
.super Ljava/lang/Object;
.source "UwbRangingParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/uwb/UwbRangingParams$Builder;,
        Landroid/ranging/uwb/UwbRangingParams$SlotDuration;,
        Landroid/ranging/uwb/UwbRangingParams$ConfigId;
    }
.end annotation


# static fields
.field public static final whitelist CONFIG_MULTICAST_DS_TWR:I = 0x2

.field public static final whitelist CONFIG_PROVISIONED_INDIVIDUAL_MULTICAST_DS_TWR:I = 0x5

.field public static final whitelist CONFIG_PROVISIONED_MULTICAST_DS_TWR:I = 0x4

.field public static final whitelist CONFIG_PROVISIONED_UNICAST_DS_TWR:I = 0x3

.field public static final whitelist CONFIG_PROVISIONED_UNICAST_DS_TWR_VERY_FAST:I = 0x6

.field public static final whitelist CONFIG_UNICAST_DS_TWR:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/uwb/UwbRangingParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DURATION_1_MS:I = 0x1

.field public static final whitelist DURATION_2_MS:I = 0x2

.field public static final whitelist SUB_SESSION_UNDEFINED:I = -0x1


# instance fields
.field private final blacklist mComplexChannel:Landroid/ranging/uwb/UwbComplexChannel;

.field private final blacklist mConfigId:I

.field private final blacklist mDeviceAddress:Landroid/ranging/uwb/UwbAddress;

.field private final blacklist mPeerAddress:Landroid/ranging/uwb/UwbAddress;

.field private final blacklist mRangingUpdateRate:I

.field private final blacklist mSessionId:I

.field private final blacklist mSessionKeyInfo:[B

.field private final blacklist mSlotDurationMillis:I

.field private final blacklist mSubSessionId:I

.field private final blacklist mSubSessionKeyInfo:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Landroid/ranging/uwb/UwbRangingParams$1;

    invoke-direct {v0}, Landroid/ranging/uwb/UwbRangingParams$1;-><init>()V

    sput-object v0, Landroid/ranging/uwb/UwbRangingParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSessionId:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSubSessionId:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mConfigId:I

    .line 52
    const-class v0, Landroid/ranging/uwb/UwbAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/ranging/uwb/UwbAddress;

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mDeviceAddress:Landroid/ranging/uwb/UwbAddress;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSessionKeyInfo:[B

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSubSessionKeyInfo:[B

    .line 55
    const-class v0, Landroid/ranging/uwb/UwbComplexChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/ranging/uwb/UwbComplexChannel;

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mComplexChannel:Landroid/ranging/uwb/UwbComplexChannel;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mRangingUpdateRate:I

    .line 57
    const-class v0, Landroid/ranging/uwb/UwbAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/ranging/uwb/UwbAddress;

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mPeerAddress:Landroid/ranging/uwb/UwbAddress;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSlotDurationMillis:I

    .line 59
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/uwb/UwbRangingParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/uwb/UwbRangingParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/uwb/UwbRangingParams$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/ranging/uwb/UwbRangingParams$Builder;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingParams$Builder;->-$$Nest$fgetmSessionId(Landroid/ranging/uwb/UwbRangingParams$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSessionId:I

    .line 178
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingParams$Builder;->-$$Nest$fgetmSubSessionId(Landroid/ranging/uwb/UwbRangingParams$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSubSessionId:I

    .line 179
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingParams$Builder;->-$$Nest$fgetmConfigId(Landroid/ranging/uwb/UwbRangingParams$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mConfigId:I

    .line 180
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingParams$Builder;->-$$Nest$fgetmDeviceAddress(Landroid/ranging/uwb/UwbRangingParams$Builder;)Landroid/ranging/uwb/UwbAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mDeviceAddress:Landroid/ranging/uwb/UwbAddress;

    .line 181
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingParams$Builder;->-$$Nest$fgetmSessionKeyInfo(Landroid/ranging/uwb/UwbRangingParams$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSessionKeyInfo:[B

    .line 182
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingParams$Builder;->-$$Nest$fgetmSubSessionKeyInfo(Landroid/ranging/uwb/UwbRangingParams$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSubSessionKeyInfo:[B

    .line 183
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingParams$Builder;->-$$Nest$fgetmComplexChannel(Landroid/ranging/uwb/UwbRangingParams$Builder;)Landroid/ranging/uwb/UwbComplexChannel;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mComplexChannel:Landroid/ranging/uwb/UwbComplexChannel;

    .line 184
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingParams$Builder;->-$$Nest$fgetmPeerAddress(Landroid/ranging/uwb/UwbRangingParams$Builder;)Landroid/ranging/uwb/UwbAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mPeerAddress:Landroid/ranging/uwb/UwbAddress;

    .line 185
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingParams$Builder;->-$$Nest$fgetmRangingUpdateRate(Landroid/ranging/uwb/UwbRangingParams$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mRangingUpdateRate:I

    .line 186
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingParams$Builder;->-$$Nest$fgetmSlotDuration(Landroid/ranging/uwb/UwbRangingParams$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSlotDurationMillis:I

    .line 187
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/uwb/UwbRangingParams$Builder;Landroid/ranging/uwb/UwbRangingParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/uwb/UwbRangingParams;-><init>(Landroid/ranging/uwb/UwbRangingParams$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 456
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 457
    :cond_4
    instance-of v1, p1, Landroid/ranging/uwb/UwbRangingParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_5f

    move-object v1, p1

    check-cast v1, Landroid/ranging/uwb/UwbRangingParams;

    .line 458
    .local v1, "that":Landroid/ranging/uwb/UwbRangingParams;
    iget v3, p0, Landroid/ranging/uwb/UwbRangingParams;->mSessionId:I

    iget v4, v1, Landroid/ranging/uwb/UwbRangingParams;->mSessionId:I

    if-ne v3, v4, :cond_5d

    iget v3, p0, Landroid/ranging/uwb/UwbRangingParams;->mSubSessionId:I

    iget v4, v1, Landroid/ranging/uwb/UwbRangingParams;->mSubSessionId:I

    if-ne v3, v4, :cond_5d

    iget v3, p0, Landroid/ranging/uwb/UwbRangingParams;->mConfigId:I

    iget v4, v1, Landroid/ranging/uwb/UwbRangingParams;->mConfigId:I

    if-ne v3, v4, :cond_5d

    iget v3, p0, Landroid/ranging/uwb/UwbRangingParams;->mRangingUpdateRate:I

    iget v4, v1, Landroid/ranging/uwb/UwbRangingParams;->mRangingUpdateRate:I

    if-ne v3, v4, :cond_5d

    iget v3, p0, Landroid/ranging/uwb/UwbRangingParams;->mSlotDurationMillis:I

    iget v4, v1, Landroid/ranging/uwb/UwbRangingParams;->mSlotDurationMillis:I

    if-ne v3, v4, :cond_5d

    iget-object v3, p0, Landroid/ranging/uwb/UwbRangingParams;->mDeviceAddress:Landroid/ranging/uwb/UwbAddress;

    iget-object v4, v1, Landroid/ranging/uwb/UwbRangingParams;->mDeviceAddress:Landroid/ranging/uwb/UwbAddress;

    .line 460
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    iget-object v3, p0, Landroid/ranging/uwb/UwbRangingParams;->mSessionKeyInfo:[B

    iget-object v4, v1, Landroid/ranging/uwb/UwbRangingParams;->mSessionKeyInfo:[B

    .line 461
    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    iget-object v3, p0, Landroid/ranging/uwb/UwbRangingParams;->mSubSessionKeyInfo:[B

    iget-object v4, v1, Landroid/ranging/uwb/UwbRangingParams;->mSubSessionKeyInfo:[B

    .line 462
    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    iget-object v3, p0, Landroid/ranging/uwb/UwbRangingParams;->mComplexChannel:Landroid/ranging/uwb/UwbComplexChannel;

    iget-object v4, v1, Landroid/ranging/uwb/UwbRangingParams;->mComplexChannel:Landroid/ranging/uwb/UwbComplexChannel;

    .line 463
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    iget-object v3, p0, Landroid/ranging/uwb/UwbRangingParams;->mPeerAddress:Landroid/ranging/uwb/UwbAddress;

    iget-object v4, v1, Landroid/ranging/uwb/UwbRangingParams;->mPeerAddress:Landroid/ranging/uwb/UwbAddress;

    .line 464
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    goto :goto_5e

    :cond_5d
    move v0, v2

    .line 458
    :goto_5e
    return v0

    .line 457
    .end local v1    # "that":Landroid/ranging/uwb/UwbRangingParams;
    :cond_5f
    return v2
.end method

.method public whitelist getComplexChannel()Landroid/ranging/uwb/UwbComplexChannel;
    .registers 2

    .line 256
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mComplexChannel:Landroid/ranging/uwb/UwbComplexChannel;

    return-object v0
.end method

.method public whitelist getConfigId()I
    .registers 2

    .line 214
    iget v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mConfigId:I

    return v0
.end method

.method public whitelist getDeviceAddress()Landroid/ranging/uwb/UwbAddress;
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mDeviceAddress:Landroid/ranging/uwb/UwbAddress;

    return-object v0
.end method

.method public whitelist getPeerAddress()Landroid/ranging/uwb/UwbAddress;
    .registers 2

    .line 266
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mPeerAddress:Landroid/ranging/uwb/UwbAddress;

    return-object v0
.end method

.method public whitelist getRangingUpdateRate()I
    .registers 2

    .line 276
    iget v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mRangingUpdateRate:I

    return v0
.end method

.method public whitelist getSessionId()I
    .registers 2

    .line 195
    iget v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSessionId:I

    return v0
.end method

.method public whitelist getSessionKeyInfo()[B
    .registers 3

    .line 234
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSessionKeyInfo:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_f

    :cond_6
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSessionKeyInfo:[B

    iget-object v1, p0, Landroid/ranging/uwb/UwbRangingParams;->mSessionKeyInfo:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public whitelist getSlotDuration()I
    .registers 2

    .line 286
    iget v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSlotDurationMillis:I

    return v0
.end method

.method public whitelist getSubSessionId()I
    .registers 2

    .line 204
    iget v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSubSessionId:I

    return v0
.end method

.method public whitelist getSubSessionKeyInfo()[B
    .registers 3

    .line 245
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSubSessionKeyInfo:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_f

    :cond_6
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSubSessionKeyInfo:[B

    iget-object v1, p0, Landroid/ranging/uwb/UwbRangingParams;->mSubSessionKeyInfo:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 12

    .line 472
    iget v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSubSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mConfigId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/ranging/uwb/UwbRangingParams;->mDeviceAddress:Landroid/ranging/uwb/UwbAddress;

    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSessionKeyInfo:[B

    .line 473
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSubSessionKeyInfo:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/ranging/uwb/UwbRangingParams;->mComplexChannel:Landroid/ranging/uwb/UwbComplexChannel;

    iget-object v8, p0, Landroid/ranging/uwb/UwbRangingParams;->mPeerAddress:Landroid/ranging/uwb/UwbAddress;

    iget v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mRangingUpdateRate:I

    .line 475
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSlotDurationMillis:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 472
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UwbRangingParams{ mSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/ranging/uwb/UwbRangingParams;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/ranging/uwb/UwbRangingParams;->mSubSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfigId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/ranging/uwb/UwbRangingParams;->mConfigId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/uwb/UwbRangingParams;->mDeviceAddress:Landroid/ranging/uwb/UwbAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSessionKeyInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/uwb/UwbRangingParams;->mSessionKeyInfo:[B

    .line 437
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubSessionKeyInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/uwb/UwbRangingParams;->mSubSessionKeyInfo:[B

    .line 439
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mComplexChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/uwb/UwbRangingParams;->mComplexChannel:Landroid/ranging/uwb/UwbComplexChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPeerAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/uwb/UwbRangingParams;->mPeerAddress:Landroid/ranging/uwb/UwbAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRangingUpdateRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/ranging/uwb/UwbRangingParams;->mRangingUpdateRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSlotDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/ranging/uwb/UwbRangingParams;->mSlotDurationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 81
    iget v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSubSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mConfigId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mDeviceAddress:Landroid/ranging/uwb/UwbAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 85
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSessionKeyInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 86
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSubSessionKeyInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 87
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mComplexChannel:Landroid/ranging/uwb/UwbComplexChannel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 88
    iget v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mRangingUpdateRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mPeerAddress:Landroid/ranging/uwb/UwbAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    iget v0, p0, Landroid/ranging/uwb/UwbRangingParams;->mSlotDurationMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method

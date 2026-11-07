.class public final Landroid/telephony/satellite/SatelliteSubscriberInfo;
.super Ljava/lang/Object;
.source "SatelliteSubscriberInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;,
        Landroid/telephony/satellite/SatelliteSubscriberInfo$SubscriberIdType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SatelliteSubscriberInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SUBSCRIBER_ID_TYPE_ICCID:I = 0x0

.field public static final blacklist SUBSCRIBER_ID_TYPE_IMSI_MSISDN:I = 0x1


# instance fields
.field private blacklist mCarrierId:I

.field private blacklist mNiddApn:Ljava/lang/String;

.field private blacklist mSubscriberId:Ljava/lang/String;

.field private blacklist mSubscriberIdType:I

.field private blacklist mSubscriptionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 163
    new-instance v0, Landroid/telephony/satellite/SatelliteSubscriberInfo$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteSubscriberInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteSubscriberInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SatelliteSubscriberInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteSubscriberInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->-$$Nest$fgetmSubscriberId(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberId:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->-$$Nest$fgetmCarrierId(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mCarrierId:I

    .line 79
    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->-$$Nest$fgetmNiddApn(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mNiddApn:Ljava/lang/String;

    .line 80
    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->-$$Nest$fgetmSubscriptionId(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriptionId:I

    .line 81
    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->-$$Nest$fgetmSubscriberIdType(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberIdType:I

    .line 82
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberId:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mCarrierId:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mNiddApn:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriptionId:I

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberIdType:I

    .line 268
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 253
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 254
    :cond_4
    instance-of v1, p1, Landroid/telephony/satellite/SatelliteSubscriberInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 255
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/satellite/SatelliteSubscriberInfo;

    .line 256
    .local v1, "that":Landroid/telephony/satellite/SatelliteSubscriberInfo;
    iget-object v3, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberId:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget v3, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mCarrierId:I

    iget v4, v1, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mCarrierId:I

    if-ne v3, v4, :cond_34

    iget-object v3, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mNiddApn:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mNiddApn:Ljava/lang/String;

    .line 257
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget v3, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriptionId:I

    iget v4, v1, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriptionId:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberIdType:I

    iget v4, v1, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberIdType:I

    if-ne v3, v4, :cond_34

    goto :goto_35

    :cond_34
    move v0, v2

    .line 256
    :goto_35
    return v0
.end method

.method public blacklist getCarrierId()I
    .registers 2

    .line 194
    iget v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mCarrierId:I

    return v0
.end method

.method public blacklist getNiddApn()Ljava/lang/String;
    .registers 2

    .line 202
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mNiddApn:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSubscriberId()Ljava/lang/String;
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSubscriberIdType()I
    .registers 2

    .line 216
    iget v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberIdType:I

    return v0
.end method

.method public blacklist getSubscriptionId()I
    .registers 2

    .line 209
    iget v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriptionId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 247
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberId:Ljava/lang/String;

    iget v1, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mCarrierId:I

    .line 248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mNiddApn:Ljava/lang/String;

    iget v3, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriptionId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberIdType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 247
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SubscriberId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v2, "CarrierId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget v2, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mCarrierId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v2, "NiddApn:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object v2, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mNiddApn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v2, "SubscriptionId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget v2, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriptionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v1, "SubscriberIdType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget v1, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberIdType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 155
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mCarrierId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mNiddApn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberIdType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    return-void
.end method

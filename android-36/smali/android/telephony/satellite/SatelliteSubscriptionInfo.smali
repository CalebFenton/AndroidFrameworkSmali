.class public final Landroid/telephony/satellite/SatelliteSubscriptionInfo;
.super Ljava/lang/Object;
.source "SatelliteSubscriptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SatelliteSubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIccId:Ljava/lang/String;

.field private final blacklist mNiddApn:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Landroid/telephony/satellite/SatelliteSubscriptionInfo$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteSubscriptionInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->mIccId:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->mNiddApn:Ljava/lang/String;

    .line 59
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SatelliteSubscriptionInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteSubscriptionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "niddApn"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->mIccId:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->mNiddApn:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 96
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 97
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 98
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    .line 99
    .local v2, "that":Landroid/telephony/satellite/SatelliteSubscriptionInfo;
    iget-object v3, p0, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->mNiddApn:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->getNiddApn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0

    .line 97
    .end local v2    # "that":Landroid/telephony/satellite/SatelliteSubscriptionInfo;
    :cond_30
    :goto_30
    return v1
.end method

.method public blacklist getIccId()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNiddApn()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->mNiddApn:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 104
    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->getNiddApn()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SatelliteSubscriptionInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const-string v1, "IccId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    const-string v1, ", NiddApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->mNiddApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 68
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->mNiddApn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 70
    return-void
.end method

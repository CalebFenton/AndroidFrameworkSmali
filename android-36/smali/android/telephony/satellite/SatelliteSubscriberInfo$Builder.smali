.class public final Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;
.super Ljava/lang/Object;
.source "SatelliteSubscriberInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/SatelliteSubscriberInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCarrierId:I

.field private blacklist mNiddApn:Ljava/lang/String;

.field private blacklist mSubscriberId:Ljava/lang/String;

.field private blacklist mSubscriberIdType:I

.field private blacklist mSubscriptionId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNiddApn(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mNiddApn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriberId(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mSubscriberId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriberIdType(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mSubscriberIdType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriptionId(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mSubscriptionId:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/satellite/SatelliteSubscriberInfo;
    .registers 2

    .line 149
    new-instance v0, Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteSubscriberInfo;-><init>(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)V

    return-object v0
.end method

.method public blacklist setCarrierId(I)Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;
    .registers 2
    .param p1, "carrierId"    # I

    .line 110
    iput p1, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mCarrierId:I

    .line 111
    return-object p0
.end method

.method public blacklist setNiddApn(Ljava/lang/String;)Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;
    .registers 2
    .param p1, "niddApn"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mNiddApn:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public blacklist setSubscriberId(Ljava/lang/String;)Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;
    .registers 2
    .param p1, "subscriberId"    # Ljava/lang/String;

    .line 101
    iput-object p1, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mSubscriberId:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public blacklist setSubscriberIdType(I)Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;
    .registers 2
    .param p1, "subscriberIdType"    # I

    .line 140
    iput p1, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mSubscriberIdType:I

    .line 141
    return-object p0
.end method

.method public blacklist setSubscriptionId(I)Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;
    .registers 2
    .param p1, "subId"    # I

    .line 131
    iput p1, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mSubscriptionId:I

    .line 132
    return-object p0
.end method

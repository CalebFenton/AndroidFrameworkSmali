.class public final Landroid/adservices/customaudience/CustomAudience;
.super Ljava/lang/Object;
.source "CustomAudience.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/customaudience/CustomAudience$Builder;,
        Landroid/adservices/customaudience/CustomAudience$AuctionServerRequestFlag;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/customaudience/CustomAudience;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_AUCTION_SERVER_REQUEST_DEFAULT:I = 0x0

.field public static final whitelist FLAG_AUCTION_SERVER_REQUEST_OMIT_ADS:I = 0x1

.field public static final blacklist PRIORITY_DEFAULT:D


# instance fields
.field private final blacklist mActivationTime:Ljava/time/Instant;

.field private final blacklist mAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/common/AdData;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAuctionServerRequestFlags:I

.field private final blacklist mBiddingLogicUri:Landroid/net/Uri;

.field private final blacklist mBuyer:Landroid/adservices/common/AdTechIdentifier;

.field private final blacklist mComponentAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/common/ComponentAdData;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDailyUpdateUri:Landroid/net/Uri;

.field private final blacklist mExpirationTime:Ljava/time/Instant;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPriority:D

.field private final blacklist mTrustedBiddingData:Landroid/adservices/customaudience/TrustedBiddingData;

.field private final blacklist mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Landroid/adservices/customaudience/CustomAudience$1;

    invoke-direct {v0}, Landroid/adservices/customaudience/CustomAudience$1;-><init>()V

    sput-object v0, Landroid/adservices/customaudience/CustomAudience;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/customaudience/CustomAudience$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/adservices/customaudience/CustomAudience$Builder;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p1}, Landroid/adservices/customaudience/CustomAudience$Builder;->-$$Nest$fgetmBuyer(Landroid/adservices/customaudience/CustomAudience$Builder;)Landroid/adservices/common/AdTechIdentifier;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 107
    invoke-static {p1}, Landroid/adservices/customaudience/CustomAudience$Builder;->-$$Nest$fgetmName(Landroid/adservices/customaudience/CustomAudience$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mName:Ljava/lang/String;

    .line 108
    invoke-static {p1}, Landroid/adservices/customaudience/CustomAudience$Builder;->-$$Nest$fgetmActivationTime(Landroid/adservices/customaudience/CustomAudience$Builder;)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mActivationTime:Ljava/time/Instant;

    .line 109
    invoke-static {p1}, Landroid/adservices/customaudience/CustomAudience$Builder;->-$$Nest$fgetmExpirationTime(Landroid/adservices/customaudience/CustomAudience$Builder;)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mExpirationTime:Ljava/time/Instant;

    .line 110
    invoke-static {p1}, Landroid/adservices/customaudience/CustomAudience$Builder;->-$$Nest$fgetmDailyUpdateUri(Landroid/adservices/customaudience/CustomAudience$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mDailyUpdateUri:Landroid/net/Uri;

    .line 111
    invoke-static {p1}, Landroid/adservices/customaudience/CustomAudience$Builder;->-$$Nest$fgetmUserBiddingSignals(Landroid/adservices/customaudience/CustomAudience$Builder;)Landroid/adservices/common/AdSelectionSignals;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 112
    invoke-static {p1}, Landroid/adservices/customaudience/CustomAudience$Builder;->-$$Nest$fgetmTrustedBiddingData(Landroid/adservices/customaudience/CustomAudience$Builder;)Landroid/adservices/customaudience/TrustedBiddingData;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mTrustedBiddingData:Landroid/adservices/customaudience/TrustedBiddingData;

    .line 113
    invoke-static {p1}, Landroid/adservices/customaudience/CustomAudience$Builder;->-$$Nest$fgetmBiddingLogicUri(Landroid/adservices/customaudience/CustomAudience$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mBiddingLogicUri:Landroid/net/Uri;

    .line 114
    invoke-static {p1}, Landroid/adservices/customaudience/CustomAudience$Builder;->-$$Nest$fgetmAds(Landroid/adservices/customaudience/CustomAudience$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mAds:Ljava/util/List;

    .line 115
    invoke-static {p1}, Landroid/adservices/customaudience/CustomAudience$Builder;->-$$Nest$fgetmComponentAds(Landroid/adservices/customaudience/CustomAudience$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mComponentAds:Ljava/util/List;

    .line 116
    invoke-static {p1}, Landroid/adservices/customaudience/CustomAudience$Builder;->-$$Nest$fgetmAuctionServerRequestFlags(Landroid/adservices/customaudience/CustomAudience$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/customaudience/CustomAudience;->mAuctionServerRequestFlags:I

    .line 117
    invoke-static {p1}, Landroid/adservices/customaudience/CustomAudience$Builder;->-$$Nest$fgetmPriority(Landroid/adservices/customaudience/CustomAudience$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/customaudience/CustomAudience;->mPriority:D

    .line 118
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/customaudience/CustomAudience$Builder;Landroid/adservices/customaudience/CustomAudience-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/customaudience/CustomAudience;-><init>(Landroid/adservices/customaudience/CustomAudience$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Landroid/adservices/common/AdTechIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdTechIdentifier;

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mName:Ljava/lang/String;

    .line 125
    new-instance v0, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda4;-><init>()V

    .line 126
    invoke-static {p1, v0}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mActivationTime:Ljava/time/Instant;

    .line 128
    new-instance v0, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda5;-><init>()V

    .line 129
    invoke-static {p1, v0}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mExpirationTime:Ljava/time/Instant;

    .line 131
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mDailyUpdateUri:Landroid/net/Uri;

    .line 132
    sget-object v0, Landroid/adservices/common/AdSelectionSignals;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 134
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda6;-><init>(Landroid/os/Parcelable$Creator;)V

    .line 133
    invoke-static {p1, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdSelectionSignals;

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 135
    sget-object v0, Landroid/adservices/customaudience/TrustedBiddingData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 137
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda7;-><init>(Landroid/os/Parcelable$Creator;)V

    .line 136
    invoke-static {p1, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/customaudience/TrustedBiddingData;

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mTrustedBiddingData:Landroid/adservices/customaudience/TrustedBiddingData;

    .line 138
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mBiddingLogicUri:Landroid/net/Uri;

    .line 139
    sget-object v0, Landroid/adservices/common/AdData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mAds:Ljava/util/List;

    .line 140
    sget-object v0, Landroid/adservices/common/ComponentAdData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mComponentAds:Ljava/util/List;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/customaudience/CustomAudience;->mAuctionServerRequestFlags:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/customaudience/CustomAudience;->mPriority:D

    .line 143
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/customaudience/CustomAudience-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/customaudience/CustomAudience;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Landroid/os/Parcel;)Ljava/time/Instant;
    .registers 3
    .param p0, "sourceParcel"    # Landroid/os/Parcel;

    .line 127
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Landroid/os/Parcel;)Ljava/time/Instant;
    .registers 3
    .param p0, "sourceParcel"    # Landroid/os/Parcel;

    .line 130
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$writeToParcel$2(Landroid/os/Parcel;Ljava/time/Instant;)V
    .registers 4
    .param p0, "targetParcel"    # Landroid/os/Parcel;
    .param p1, "sourceInstant"    # Ljava/time/Instant;

    .line 155
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$3(Landroid/os/Parcel;Ljava/time/Instant;)V
    .registers 4
    .param p0, "targetParcel"    # Landroid/os/Parcel;
    .param p1, "sourceInstant"    # Ljava/time/Instant;

    .line 160
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$4(ILandroid/os/Parcel;Landroid/adservices/common/AdSelectionSignals;)V
    .registers 3
    .param p0, "flags"    # I
    .param p1, "targetParcel"    # Landroid/os/Parcel;
    .param p2, "sourceSignals"    # Landroid/adservices/common/AdSelectionSignals;

    .line 165
    invoke-virtual {p2, p1, p0}, Landroid/adservices/common/AdSelectionSignals;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$5(ILandroid/os/Parcel;Landroid/adservices/customaudience/TrustedBiddingData;)V
    .registers 3
    .param p0, "flags"    # I
    .param p1, "targetParcel"    # Landroid/os/Parcel;
    .param p2, "sourceData"    # Landroid/adservices/customaudience/TrustedBiddingData;

    .line 169
    invoke-virtual {p2, p1, p0}, Landroid/adservices/customaudience/TrustedBiddingData;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 405
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 406
    :cond_4
    instance-of v1, p1, Landroid/adservices/customaudience/CustomAudience;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 407
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/customaudience/CustomAudience;

    .line 408
    .local v1, "that":Landroid/adservices/customaudience/CustomAudience;
    iget-object v3, p0, Landroid/adservices/customaudience/CustomAudience;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    iget-object v4, v1, Landroid/adservices/customaudience/CustomAudience;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v3, v4}, Landroid/adservices/common/AdTechIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    iget-object v3, p0, Landroid/adservices/customaudience/CustomAudience;->mName:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/customaudience/CustomAudience;->mName:Ljava/lang/String;

    .line 409
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    iget-object v3, p0, Landroid/adservices/customaudience/CustomAudience;->mActivationTime:Ljava/time/Instant;

    iget-object v4, v1, Landroid/adservices/customaudience/CustomAudience;->mActivationTime:Ljava/time/Instant;

    .line 410
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    iget-object v3, p0, Landroid/adservices/customaudience/CustomAudience;->mExpirationTime:Ljava/time/Instant;

    iget-object v4, v1, Landroid/adservices/customaudience/CustomAudience;->mExpirationTime:Ljava/time/Instant;

    .line 411
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    iget-object v3, p0, Landroid/adservices/customaudience/CustomAudience;->mDailyUpdateUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/adservices/customaudience/CustomAudience;->mDailyUpdateUri:Landroid/net/Uri;

    .line 412
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    iget-object v3, p0, Landroid/adservices/customaudience/CustomAudience;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    iget-object v4, v1, Landroid/adservices/customaudience/CustomAudience;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 413
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    iget-object v3, p0, Landroid/adservices/customaudience/CustomAudience;->mTrustedBiddingData:Landroid/adservices/customaudience/TrustedBiddingData;

    iget-object v4, v1, Landroid/adservices/customaudience/CustomAudience;->mTrustedBiddingData:Landroid/adservices/customaudience/TrustedBiddingData;

    .line 414
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    iget-object v3, p0, Landroid/adservices/customaudience/CustomAudience;->mBiddingLogicUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/adservices/customaudience/CustomAudience;->mBiddingLogicUri:Landroid/net/Uri;

    .line 415
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    iget-object v3, p0, Landroid/adservices/customaudience/CustomAudience;->mAds:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/customaudience/CustomAudience;->mAds:Ljava/util/List;

    .line 416
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    iget-object v3, p0, Landroid/adservices/customaudience/CustomAudience;->mComponentAds:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/customaudience/CustomAudience;->mComponentAds:Ljava/util/List;

    .line 417
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    iget v3, p0, Landroid/adservices/customaudience/CustomAudience;->mAuctionServerRequestFlags:I

    iget v4, v1, Landroid/adservices/customaudience/CustomAudience;->mAuctionServerRequestFlags:I

    if-ne v3, v4, :cond_8c

    iget-wide v3, p0, Landroid/adservices/customaudience/CustomAudience;->mPriority:D

    iget-wide v5, v1, Landroid/adservices/customaudience/CustomAudience;->mPriority:D

    .line 419
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_8c

    iget-object v3, p0, Landroid/adservices/customaudience/CustomAudience;->mComponentAds:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/customaudience/CustomAudience;->mComponentAds:Ljava/util/List;

    .line 420
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    goto :goto_8d

    :cond_8c
    move v0, v2

    .line 408
    :goto_8d
    return v0
.end method

.method public whitelist getActivationTime()Ljava/time/Instant;
    .registers 2

    .line 255
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mActivationTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getAds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/adservices/common/AdData;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mAds:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getAuctionServerRequestFlags()I
    .registers 2

    .line 381
    iget v0, p0, Landroid/adservices/customaudience/CustomAudience;->mAuctionServerRequestFlags:I

    return v0
.end method

.method public whitelist getBiddingLogicUri()Landroid/net/Uri;
    .registers 2

    .line 330
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mBiddingLogicUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getBuyer()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 220
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public whitelist getComponentAds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/adservices/common/ComponentAdData;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mComponentAds:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDailyUpdateUri()Landroid/net/Uri;
    .registers 2

    .line 284
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mDailyUpdateUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getExpirationTime()Ljava/time/Instant;
    .registers 2

    .line 273
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mExpirationTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPriority()D
    .registers 3

    .line 397
    iget-wide v0, p0, Landroid/adservices/customaudience/CustomAudience;->mPriority:D

    return-wide v0
.end method

.method public whitelist getTrustedBiddingData()Landroid/adservices/customaudience/TrustedBiddingData;
    .registers 2

    .line 319
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mTrustedBiddingData:Landroid/adservices/customaudience/TrustedBiddingData;

    return-object v0
.end method

.method public whitelist getUserBiddingSignals()Landroid/adservices/common/AdSelectionSignals;
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 14

    .line 426
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    iget-object v1, p0, Landroid/adservices/customaudience/CustomAudience;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/adservices/customaudience/CustomAudience;->mActivationTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/adservices/customaudience/CustomAudience;->mExpirationTime:Ljava/time/Instant;

    iget-object v4, p0, Landroid/adservices/customaudience/CustomAudience;->mDailyUpdateUri:Landroid/net/Uri;

    iget-object v5, p0, Landroid/adservices/customaudience/CustomAudience;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    iget-object v6, p0, Landroid/adservices/customaudience/CustomAudience;->mTrustedBiddingData:Landroid/adservices/customaudience/TrustedBiddingData;

    iget-object v7, p0, Landroid/adservices/customaudience/CustomAudience;->mBiddingLogicUri:Landroid/net/Uri;

    iget-object v8, p0, Landroid/adservices/customaudience/CustomAudience;->mAds:Ljava/util/List;

    iget-object v9, p0, Landroid/adservices/customaudience/CustomAudience;->mComponentAds:Ljava/util/List;

    iget v10, p0, Landroid/adservices/customaudience/CustomAudience;->mAuctionServerRequestFlags:I

    .line 437
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-wide v11, p0, Landroid/adservices/customaudience/CustomAudience;->mPriority:D

    .line 438
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 426
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomAudience{mBuyer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/CustomAudience;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/CustomAudience;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActivationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/CustomAudience;->mActivationTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/CustomAudience;->mExpirationTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDailyUpdateUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/CustomAudience;->mDailyUpdateUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserBiddingSignals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/CustomAudience;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTrustedBiddingData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/CustomAudience;->mTrustedBiddingData:Landroid/adservices/customaudience/TrustedBiddingData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBiddingLogicUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/CustomAudience;->mBiddingLogicUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/CustomAudience;->mAds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mComponentAds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/CustomAudience;->mComponentAds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAuctionServerRequestFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/customaudience/CustomAudience;->mAuctionServerRequestFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/adservices/customaudience/CustomAudience;->mPriority:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

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
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 147
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/common/AdTechIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    .line 150
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mActivationTime:Ljava/time/Instant;

    new-instance v1, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 156
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mExpirationTime:Ljava/time/Instant;

    new-instance v1, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 161
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mDailyUpdateUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 162
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    new-instance v1, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 166
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mTrustedBiddingData:Landroid/adservices/customaudience/TrustedBiddingData;

    new-instance v1, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Landroid/adservices/customaudience/CustomAudience$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 170
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mBiddingLogicUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 171
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mAds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 172
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience;->mComponentAds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 173
    iget v0, p0, Landroid/adservices/customaudience/CustomAudience;->mAuctionServerRequestFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-wide v0, p0, Landroid/adservices/customaudience/CustomAudience;->mPriority:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 175
    return-void
.end method

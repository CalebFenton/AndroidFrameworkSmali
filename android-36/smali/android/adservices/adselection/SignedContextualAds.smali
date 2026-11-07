.class public final Landroid/adservices/adselection/SignedContextualAds;
.super Ljava/lang/Object;
.source "SignedContextualAds.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/SignedContextualAds$Builder;
    }
.end annotation


# static fields
.field private static final blacklist ADS_WITH_BID_CANNOT_BE_NULL:Ljava/lang/String; = "AdsWithBid cannot be null."

.field private static final blacklist BUYER_CANNOT_BE_NULL:Ljava/lang/String; = "Buyer cannot be null."

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/SignedContextualAds;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DECISION_LOGIC_URI_CANNOT_BE_NULL:Ljava/lang/String; = "DecisionLogicUri cannot be null."

.field private static final blacklist SIGNATURE_CANNOT_BE_NULL:Ljava/lang/String; = "Signature cannot be null."


# instance fields
.field private final blacklist mAdsWithBid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/adselection/AdWithBid;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBuyer:Landroid/adservices/common/AdTechIdentifier;

.field private final blacklist mDecisionLogicUri:Landroid/net/Uri;

.field private final blacklist mSignature:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Landroid/adservices/adselection/SignedContextualAds$1;

    invoke-direct {v0}, Landroid/adservices/adselection/SignedContextualAds$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/SignedContextualAds;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/common/AdTechIdentifier;Landroid/net/Uri;Ljava/util/List;[B)V
    .registers 5
    .param p1, "buyer"    # Landroid/adservices/common/AdTechIdentifier;
    .param p2, "decisionLogicUri"    # Landroid/net/Uri;
    .param p4, "signature"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/common/AdTechIdentifier;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/adservices/adselection/AdWithBid;",
            ">;[B)V"
        }
    .end annotation

    .line 90
    .local p3, "adsWithBid":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/adselection/AdWithBid;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/adservices/adselection/SignedContextualAds;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 92
    iput-object p2, p0, Landroid/adservices/adselection/SignedContextualAds;->mDecisionLogicUri:Landroid/net/Uri;

    .line 93
    iput-object p3, p0, Landroid/adservices/adselection/SignedContextualAds;->mAdsWithBid:Ljava/util/List;

    .line 94
    iput-object p4, p0, Landroid/adservices/adselection/SignedContextualAds;->mSignature:[B

    .line 95
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/common/AdTechIdentifier;Landroid/net/Uri;Ljava/util/List;[BLandroid/adservices/adselection/SignedContextualAds-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/adservices/adselection/SignedContextualAds;-><init>(Landroid/adservices/common/AdTechIdentifier;Landroid/net/Uri;Ljava/util/List;[B)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Landroid/adservices/common/AdTechIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdTechIdentifier;

    iput-object v0, p0, Landroid/adservices/adselection/SignedContextualAds;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 100
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/adselection/SignedContextualAds;->mDecisionLogicUri:Landroid/net/Uri;

    .line 101
    sget-object v0, Landroid/adservices/adselection/AdWithBid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SignedContextualAds;->mAdsWithBid:Ljava/util/List;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SignedContextualAds;->mSignature:[B

    .line 103
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/SignedContextualAds-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/SignedContextualAds;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 122
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 123
    :cond_4
    instance-of v1, p1, Landroid/adservices/adselection/SignedContextualAds;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 124
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/adselection/SignedContextualAds;

    .line 125
    .local v1, "that":Landroid/adservices/adselection/SignedContextualAds;
    iget-object v3, p0, Landroid/adservices/adselection/SignedContextualAds;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    iget-object v4, v1, Landroid/adservices/adselection/SignedContextualAds;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/adservices/adselection/SignedContextualAds;->mDecisionLogicUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/adservices/adselection/SignedContextualAds;->mDecisionLogicUri:Landroid/net/Uri;

    .line 126
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/adservices/adselection/SignedContextualAds;->mAdsWithBid:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/adselection/SignedContextualAds;->mAdsWithBid:Ljava/util/List;

    .line 127
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/adservices/adselection/SignedContextualAds;->mSignature:[B

    iget-object v4, v1, Landroid/adservices/adselection/SignedContextualAds;->mSignature:[B

    .line 128
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v2

    .line 125
    :goto_37
    return v0
.end method

.method public whitelist getAdsWithBid()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/adservices/adselection/AdWithBid;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Landroid/adservices/adselection/SignedContextualAds;->mAdsWithBid:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getBuyer()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/adservices/adselection/SignedContextualAds;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public whitelist getDecisionLogicUri()Landroid/net/Uri;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/adservices/adselection/SignedContextualAds;->mDecisionLogicUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getSignature()[B
    .registers 3

    .line 170
    iget-object v0, p0, Landroid/adservices/adselection/SignedContextualAds;->mSignature:[B

    iget-object v1, p0, Landroid/adservices/adselection/SignedContextualAds;->mSignature:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 133
    iget-object v0, p0, Landroid/adservices/adselection/SignedContextualAds;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    iget-object v1, p0, Landroid/adservices/adselection/SignedContextualAds;->mDecisionLogicUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/adservices/adselection/SignedContextualAds;->mAdsWithBid:Ljava/util/List;

    iget-object v3, p0, Landroid/adservices/adselection/SignedContextualAds;->mSignature:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignedContextualAds{mBuyer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/SignedContextualAds;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDecisionLogicUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/SignedContextualAds;->mDecisionLogicUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdsWithBid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/SignedContextualAds;->mAdsWithBid:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSignature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/SignedContextualAds;->mSignature:[B

    .line 183
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 112
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Landroid/adservices/adselection/SignedContextualAds;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/common/AdTechIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    .line 115
    iget-object v0, p0, Landroid/adservices/adselection/SignedContextualAds;->mDecisionLogicUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    iget-object v0, p0, Landroid/adservices/adselection/SignedContextualAds;->mAdsWithBid:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 117
    iget-object v0, p0, Landroid/adservices/adselection/SignedContextualAds;->mSignature:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 118
    return-void
.end method

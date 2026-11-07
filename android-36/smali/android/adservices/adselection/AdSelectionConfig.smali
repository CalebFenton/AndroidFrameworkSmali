.class public final Landroid/adservices/adselection/AdSelectionConfig;
.super Ljava/lang/Object;
.source "AdSelectionConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/AdSelectionConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/AdSelectionConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EMPTY:Landroid/adservices/adselection/AdSelectionConfig;


# instance fields
.field private final blacklist mAdSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

.field private final blacklist mBuyerSignedContextualAds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/adservices/common/AdTechIdentifier;",
            "Landroid/adservices/adselection/SignedContextualAds;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCustomAudienceBuyers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/common/AdTechIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDecisionLogicUri:Landroid/net/Uri;

.field private final blacklist mPerBuyerSignals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/adservices/common/AdTechIdentifier;",
            "Landroid/adservices/common/AdSelectionSignals;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSeller:Landroid/adservices/common/AdTechIdentifier;

.field private final blacklist mSellerSignals:Landroid/adservices/common/AdSelectionSignals;

.field private final blacklist mTrustedScoringSignalsUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Landroid/adservices/adselection/AdSelectionConfig;

    invoke-direct {v0}, Landroid/adservices/adselection/AdSelectionConfig;-><init>()V

    sput-object v0, Landroid/adservices/adselection/AdSelectionConfig;->EMPTY:Landroid/adservices/adselection/AdSelectionConfig;

    .line 63
    new-instance v0, Landroid/adservices/adselection/AdSelectionConfig$1;

    invoke-direct {v0}, Landroid/adservices/adselection/AdSelectionConfig$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/AdSelectionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, ""

    invoke-static {v0}, Landroid/adservices/common/AdTechIdentifier;->fromString(Ljava/lang/String;)Landroid/adservices/common/AdTechIdentifier;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 79
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mDecisionLogicUri:Landroid/net/Uri;

    .line 80
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mCustomAudienceBuyers:Ljava/util/List;

    .line 81
    sget-object v0, Landroid/adservices/common/AdSelectionSignals;->EMPTY:Landroid/adservices/common/AdSelectionSignals;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mAdSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 82
    sget-object v0, Landroid/adservices/common/AdSelectionSignals;->EMPTY:Landroid/adservices/common/AdSelectionSignals;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mSellerSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mPerBuyerSignals:Ljava/util/Map;

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mBuyerSignedContextualAds:Ljava/util/Map;

    .line 85
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mTrustedScoringSignalsUri:Landroid/net/Uri;

    .line 86
    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/common/AdTechIdentifier;Landroid/net/Uri;Ljava/util/List;Landroid/adservices/common/AdSelectionSignals;Landroid/adservices/common/AdSelectionSignals;Ljava/util/Map;Ljava/util/Map;Landroid/net/Uri;)V
    .registers 9
    .param p1, "seller"    # Landroid/adservices/common/AdTechIdentifier;
    .param p2, "decisionLogicUri"    # Landroid/net/Uri;
    .param p4, "adSelectionSignals"    # Landroid/adservices/common/AdSelectionSignals;
    .param p5, "sellerSignals"    # Landroid/adservices/common/AdSelectionSignals;
    .param p8, "trustedScoringSignalsUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/common/AdTechIdentifier;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/adservices/common/AdTechIdentifier;",
            ">;",
            "Landroid/adservices/common/AdSelectionSignals;",
            "Landroid/adservices/common/AdSelectionSignals;",
            "Ljava/util/Map<",
            "Landroid/adservices/common/AdTechIdentifier;",
            "Landroid/adservices/common/AdSelectionSignals;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/adservices/common/AdTechIdentifier;",
            "Landroid/adservices/adselection/SignedContextualAds;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 96
    .local p3, "customAudienceBuyers":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/common/AdTechIdentifier;>;"
    .local p6, "perBuyerSignals":Ljava/util/Map;, "Ljava/util/Map<Landroid/adservices/common/AdTechIdentifier;Landroid/adservices/common/AdSelectionSignals;>;"
    .local p7, "perBuyerSignedContextualAds":Ljava/util/Map;, "Ljava/util/Map<Landroid/adservices/common/AdTechIdentifier;Landroid/adservices/adselection/SignedContextualAds;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionConfig;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 98
    iput-object p2, p0, Landroid/adservices/adselection/AdSelectionConfig;->mDecisionLogicUri:Landroid/net/Uri;

    .line 99
    iput-object p3, p0, Landroid/adservices/adselection/AdSelectionConfig;->mCustomAudienceBuyers:Ljava/util/List;

    .line 100
    iput-object p4, p0, Landroid/adservices/adselection/AdSelectionConfig;->mAdSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 101
    iput-object p5, p0, Landroid/adservices/adselection/AdSelectionConfig;->mSellerSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 102
    iput-object p6, p0, Landroid/adservices/adselection/AdSelectionConfig;->mPerBuyerSignals:Ljava/util/Map;

    .line 103
    iput-object p7, p0, Landroid/adservices/adselection/AdSelectionConfig;->mBuyerSignedContextualAds:Ljava/util/Map;

    .line 104
    iput-object p8, p0, Landroid/adservices/adselection/AdSelectionConfig;->mTrustedScoringSignalsUri:Landroid/net/Uri;

    .line 105
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/common/AdTechIdentifier;Landroid/net/Uri;Ljava/util/List;Landroid/adservices/common/AdSelectionSignals;Landroid/adservices/common/AdSelectionSignals;Ljava/util/Map;Ljava/util/Map;Landroid/net/Uri;Landroid/adservices/adselection/AdSelectionConfig-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/adservices/adselection/AdSelectionConfig;-><init>(Landroid/adservices/common/AdTechIdentifier;Landroid/net/Uri;Ljava/util/List;Landroid/adservices/common/AdSelectionSignals;Landroid/adservices/common/AdSelectionSignals;Ljava/util/Map;Ljava/util/Map;Landroid/net/Uri;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Landroid/adservices/common/AdTechIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdTechIdentifier;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 110
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mDecisionLogicUri:Landroid/net/Uri;

    .line 111
    sget-object v0, Landroid/adservices/common/AdTechIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mCustomAudienceBuyers:Ljava/util/List;

    .line 112
    sget-object v0, Landroid/adservices/common/AdSelectionSignals;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdSelectionSignals;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mAdSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 113
    sget-object v0, Landroid/adservices/common/AdSelectionSignals;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/common/AdSelectionSignals;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mSellerSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 114
    new-instance v0, Landroid/adservices/adselection/AdSelectionConfig$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/adservices/adselection/AdSelectionConfig$$ExternalSyntheticLambda0;-><init>()V

    const-class v1, Landroid/adservices/common/AdSelectionSignals;

    .line 115
    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->readMapFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$StringToObjectConverter;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mPerBuyerSignals:Ljava/util/Map;

    .line 117
    new-instance v0, Landroid/adservices/adselection/AdSelectionConfig$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/adservices/adselection/AdSelectionConfig$$ExternalSyntheticLambda0;-><init>()V

    const-class v1, Landroid/adservices/adselection/SignedContextualAds;

    .line 118
    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->readMapFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$StringToObjectConverter;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mBuyerSignedContextualAds:Ljava/util/Map;

    .line 120
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mTrustedScoringSignalsUri:Landroid/net/Uri;

    .line 121
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/AdSelectionConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/AdSelectionConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public blacklist cloneToBuilder()Landroid/adservices/adselection/AdSelectionConfig$Builder;
    .registers 3

    .line 176
    new-instance v0, Landroid/adservices/adselection/AdSelectionConfig$Builder;

    invoke-direct {v0}, Landroid/adservices/adselection/AdSelectionConfig$Builder;-><init>()V

    .line 177
    invoke-virtual {p0}, Landroid/adservices/adselection/AdSelectionConfig;->getSeller()Landroid/adservices/common/AdTechIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/adservices/adselection/AdSelectionConfig$Builder;->setSeller(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/AdSelectionConfig$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Landroid/adservices/adselection/AdSelectionConfig;->getPerBuyerSignedContextualAds()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/adservices/adselection/AdSelectionConfig$Builder;->setPerBuyerSignedContextualAds(Ljava/util/Map;)Landroid/adservices/adselection/AdSelectionConfig$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Landroid/adservices/adselection/AdSelectionConfig;->getAdSelectionSignals()Landroid/adservices/common/AdSelectionSignals;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/adservices/adselection/AdSelectionConfig$Builder;->setAdSelectionSignals(Landroid/adservices/common/AdSelectionSignals;)Landroid/adservices/adselection/AdSelectionConfig$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Landroid/adservices/adselection/AdSelectionConfig;->getCustomAudienceBuyers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/adservices/adselection/AdSelectionConfig$Builder;->setCustomAudienceBuyers(Ljava/util/List;)Landroid/adservices/adselection/AdSelectionConfig$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Landroid/adservices/adselection/AdSelectionConfig;->getDecisionLogicUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/adservices/adselection/AdSelectionConfig$Builder;->setDecisionLogicUri(Landroid/net/Uri;)Landroid/adservices/adselection/AdSelectionConfig$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Landroid/adservices/adselection/AdSelectionConfig;->getPerBuyerSignals()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/adservices/adselection/AdSelectionConfig$Builder;->setPerBuyerSignals(Ljava/util/Map;)Landroid/adservices/adselection/AdSelectionConfig$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Landroid/adservices/adselection/AdSelectionConfig;->getSellerSignals()Landroid/adservices/common/AdSelectionSignals;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/adservices/adselection/AdSelectionConfig$Builder;->setSellerSignals(Landroid/adservices/common/AdSelectionSignals;)Landroid/adservices/adselection/AdSelectionConfig$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Landroid/adservices/adselection/AdSelectionConfig;->getTrustedScoringSignalsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/adservices/adselection/AdSelectionConfig$Builder;->setTrustedScoringSignalsUri(Landroid/net/Uri;)Landroid/adservices/adselection/AdSelectionConfig$Builder;

    move-result-object v0

    .line 176
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 144
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 145
    :cond_4
    instance-of v1, p1, Landroid/adservices/adselection/AdSelectionConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 146
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/adselection/AdSelectionConfig;

    .line 147
    .local v1, "that":Landroid/adservices/adselection/AdSelectionConfig;
    iget-object v3, p0, Landroid/adservices/adselection/AdSelectionConfig;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v4, v1, Landroid/adservices/adselection/AdSelectionConfig;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/adservices/adselection/AdSelectionConfig;->mDecisionLogicUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/adservices/adselection/AdSelectionConfig;->mDecisionLogicUri:Landroid/net/Uri;

    .line 148
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/adservices/adselection/AdSelectionConfig;->mCustomAudienceBuyers:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/adselection/AdSelectionConfig;->mCustomAudienceBuyers:Ljava/util/List;

    .line 149
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/adservices/adselection/AdSelectionConfig;->mAdSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    iget-object v4, v1, Landroid/adservices/adselection/AdSelectionConfig;->mAdSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 150
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/adservices/adselection/AdSelectionConfig;->mSellerSignals:Landroid/adservices/common/AdSelectionSignals;

    iget-object v4, v1, Landroid/adservices/adselection/AdSelectionConfig;->mSellerSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 151
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/adservices/adselection/AdSelectionConfig;->mPerBuyerSignals:Ljava/util/Map;

    iget-object v4, v1, Landroid/adservices/adselection/AdSelectionConfig;->mPerBuyerSignals:Ljava/util/Map;

    .line 152
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/adservices/adselection/AdSelectionConfig;->mBuyerSignedContextualAds:Ljava/util/Map;

    iget-object v4, v1, Landroid/adservices/adselection/AdSelectionConfig;->mBuyerSignedContextualAds:Ljava/util/Map;

    .line 153
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/adservices/adselection/AdSelectionConfig;->mTrustedScoringSignalsUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/adservices/adselection/AdSelectionConfig;->mTrustedScoringSignalsUri:Landroid/net/Uri;

    .line 154
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_5f

    :cond_5e
    move v0, v2

    .line 147
    :goto_5f
    return v0
.end method

.method public whitelist getAdSelectionSignals()Landroid/adservices/common/AdSelectionSignals;
    .registers 2

    .line 219
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mAdSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    return-object v0
.end method

.method public whitelist getCustomAudienceBuyers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/adservices/common/AdTechIdentifier;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionConfig;->mCustomAudienceBuyers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getDecisionLogicUri()Landroid/net/Uri;
    .registers 2

    .line 199
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mDecisionLogicUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getPerBuyerSignals()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/adservices/common/AdTechIdentifier;",
            "Landroid/adservices/common/AdSelectionSignals;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionConfig;->mPerBuyerSignals:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public whitelist getPerBuyerSignedContextualAds()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/adservices/common/AdTechIdentifier;",
            "Landroid/adservices/adselection/SignedContextualAds;",
            ">;"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionConfig;->mBuyerSignedContextualAds:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public whitelist getSeller()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public whitelist getSellerSignals()Landroid/adservices/common/AdSelectionSignals;
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mSellerSignals:Landroid/adservices/common/AdSelectionSignals;

    return-object v0
.end method

.method public whitelist getTrustedScoringSignalsUri()Landroid/net/Uri;
    .registers 2

    .line 261
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mTrustedScoringSignalsUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 159
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionConfig;->mDecisionLogicUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/adservices/adselection/AdSelectionConfig;->mCustomAudienceBuyers:Ljava/util/List;

    iget-object v3, p0, Landroid/adservices/adselection/AdSelectionConfig;->mAdSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    iget-object v4, p0, Landroid/adservices/adselection/AdSelectionConfig;->mSellerSignals:Landroid/adservices/common/AdSelectionSignals;

    iget-object v5, p0, Landroid/adservices/adselection/AdSelectionConfig;->mPerBuyerSignals:Ljava/util/Map;

    iget-object v6, p0, Landroid/adservices/adselection/AdSelectionConfig;->mBuyerSignedContextualAds:Ljava/util/Map;

    iget-object v7, p0, Landroid/adservices/adselection/AdSelectionConfig;->mTrustedScoringSignalsUri:Landroid/net/Uri;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 130
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/common/AdTechIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    .line 133
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mDecisionLogicUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mCustomAudienceBuyers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 135
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mAdSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/common/AdSelectionSignals;->writeToParcel(Landroid/os/Parcel;I)V

    .line 136
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mSellerSignals:Landroid/adservices/common/AdSelectionSignals;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/common/AdSelectionSignals;->writeToParcel(Landroid/os/Parcel;I)V

    .line 137
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mPerBuyerSignals:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/android/adservices/AdServicesParcelableUtil;->writeMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 138
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mBuyerSignedContextualAds:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/android/adservices/AdServicesParcelableUtil;->writeMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 139
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig;->mTrustedScoringSignalsUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    return-void
.end method

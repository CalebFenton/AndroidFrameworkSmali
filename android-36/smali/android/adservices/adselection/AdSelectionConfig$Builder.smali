.class public final Landroid/adservices/adselection/AdSelectionConfig$Builder;
.super Ljava/lang/Object;
.source "AdSelectionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/AdSelectionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

.field private blacklist mBuyerSignedContextualAds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/adservices/common/AdTechIdentifier;",
            "Landroid/adservices/adselection/SignedContextualAds;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCustomAudienceBuyers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/common/AdTechIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDecisionLogicUri:Landroid/net/Uri;

.field private blacklist mPerBuyerSignals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/adservices/common/AdTechIdentifier;",
            "Landroid/adservices/common/AdSelectionSignals;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSeller:Landroid/adservices/common/AdTechIdentifier;

.field private blacklist mSellerSignals:Landroid/adservices/common/AdSelectionSignals;

.field private blacklist mTrustedScoringSignalsUri:Landroid/net/Uri;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    sget-object v0, Landroid/adservices/common/AdSelectionSignals;->EMPTY:Landroid/adservices/common/AdSelectionSignals;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mAdSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 270
    sget-object v0, Landroid/adservices/common/AdSelectionSignals;->EMPTY:Landroid/adservices/common/AdSelectionSignals;

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mSellerSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 271
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mPerBuyerSignals:Ljava/util/Map;

    .line 272
    nop

    .line 273
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mBuyerSignedContextualAds:Ljava/util/Map;

    .line 276
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/adselection/AdSelectionConfig;
    .registers 13

    .line 430
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    const-string v1, "The seller has not been provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 431
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mDecisionLogicUri:Landroid/net/Uri;

    const-string v1, "The decision logic URI has not been provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mCustomAudienceBuyers:Ljava/util/List;

    const-string v1, "The custom audience buyers have not been provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mAdSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    const-string v1, "The ad selection signals have not been provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mSellerSignals:Landroid/adservices/common/AdSelectionSignals;

    const-string v1, "The seller signals have not been provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 438
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mPerBuyerSignals:Ljava/util/Map;

    const-string v1, "The per buyer signals have not been provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 440
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mBuyerSignedContextualAds:Ljava/util/Map;

    const-string v1, "The buyer signed contextual ads have not been provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 443
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mTrustedScoringSignalsUri:Landroid/net/Uri;

    const-string v1, "The trusted scoring signals URI have not been provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 446
    new-instance v2, Landroid/adservices/adselection/AdSelectionConfig;

    iget-object v3, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v4, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mDecisionLogicUri:Landroid/net/Uri;

    iget-object v5, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mCustomAudienceBuyers:Ljava/util/List;

    iget-object v6, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mAdSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    iget-object v7, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mSellerSignals:Landroid/adservices/common/AdSelectionSignals;

    iget-object v8, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mPerBuyerSignals:Ljava/util/Map;

    iget-object v9, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mBuyerSignedContextualAds:Ljava/util/Map;

    iget-object v10, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mTrustedScoringSignalsUri:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Landroid/adservices/adselection/AdSelectionConfig;-><init>(Landroid/adservices/common/AdTechIdentifier;Landroid/net/Uri;Ljava/util/List;Landroid/adservices/common/AdSelectionSignals;Landroid/adservices/common/AdSelectionSignals;Ljava/util/Map;Ljava/util/Map;Landroid/net/Uri;Landroid/adservices/adselection/AdSelectionConfig-IA;)V

    return-object v2
.end method

.method public whitelist setAdSelectionSignals(Landroid/adservices/common/AdSelectionSignals;)Landroid/adservices/adselection/AdSelectionConfig$Builder;
    .registers 2
    .param p1, "adSelectionSignals"    # Landroid/adservices/common/AdSelectionSignals;

    .line 350
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mAdSelectionSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 353
    return-object p0
.end method

.method public whitelist setCustomAudienceBuyers(Ljava/util/List;)Landroid/adservices/adselection/AdSelectionConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/common/AdTechIdentifier;",
            ">;)",
            "Landroid/adservices/adselection/AdSelectionConfig$Builder;"
        }
    .end annotation

    .line 334
    .local p1, "customAudienceBuyers":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/common/AdTechIdentifier;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mCustomAudienceBuyers:Ljava/util/List;

    .line 337
    return-object p0
.end method

.method public whitelist setDecisionLogicUri(Landroid/net/Uri;)Landroid/adservices/adselection/AdSelectionConfig$Builder;
    .registers 2
    .param p1, "decisionLogicUri"    # Landroid/net/Uri;

    .line 320
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mDecisionLogicUri:Landroid/net/Uri;

    .line 323
    return-object p0
.end method

.method public whitelist setPerBuyerSignals(Ljava/util/Map;)Landroid/adservices/adselection/AdSelectionConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/adservices/common/AdTechIdentifier;",
            "Landroid/adservices/common/AdSelectionSignals;",
            ">;)",
            "Landroid/adservices/adselection/AdSelectionConfig$Builder;"
        }
    .end annotation

    .line 382
    .local p1, "perBuyerSignals":Ljava/util/Map;, "Ljava/util/Map<Landroid/adservices/common/AdTechIdentifier;Landroid/adservices/common/AdSelectionSignals;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mPerBuyerSignals:Ljava/util/Map;

    .line 385
    return-object p0
.end method

.method public whitelist setPerBuyerSignedContextualAds(Ljava/util/Map;)Landroid/adservices/adselection/AdSelectionConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/adservices/common/AdTechIdentifier;",
            "Landroid/adservices/adselection/SignedContextualAds;",
            ">;)",
            "Landroid/adservices/adselection/AdSelectionConfig$Builder;"
        }
    .end annotation

    .line 399
    .local p1, "buyerSignedContextualAds":Ljava/util/Map;, "Ljava/util/Map<Landroid/adservices/common/AdTechIdentifier;Landroid/adservices/adselection/SignedContextualAds;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mBuyerSignedContextualAds:Ljava/util/Map;

    .line 402
    return-object p0
.end method

.method public whitelist setSeller(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/AdSelectionConfig$Builder;
    .registers 2
    .param p1, "seller"    # Landroid/adservices/common/AdTechIdentifier;

    .line 285
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 288
    return-object p0
.end method

.method public whitelist setSellerSignals(Landroid/adservices/common/AdSelectionSignals;)Landroid/adservices/adselection/AdSelectionConfig$Builder;
    .registers 2
    .param p1, "sellerSignals"    # Landroid/adservices/common/AdSelectionSignals;

    .line 366
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mSellerSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 369
    return-object p0
.end method

.method public whitelist setTrustedScoringSignalsUri(Landroid/net/Uri;)Landroid/adservices/adselection/AdSelectionConfig$Builder;
    .registers 2
    .param p1, "trustedScoringSignalsUri"    # Landroid/net/Uri;

    .line 417
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionConfig$Builder;->mTrustedScoringSignalsUri:Landroid/net/Uri;

    .line 420
    return-object p0
.end method

.class public final Landroid/adservices/adselection/SignedContextualAds$Builder;
.super Ljava/lang/Object;
.source "SignedContextualAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/SignedContextualAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdsWithBid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/adselection/AdWithBid;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBuyer:Landroid/adservices/common/AdTechIdentifier;

.field private blacklist mDecisionLogicUri:Landroid/net/Uri;

.field private blacklist mSignature:[B


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/adservices/adselection/SignedContextualAds;)V
    .registers 3
    .param p1, "signedContextualAds"    # Landroid/adservices/adselection/SignedContextualAds;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {p1}, Landroid/adservices/adselection/SignedContextualAds;->getBuyer()Landroid/adservices/common/AdTechIdentifier;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SignedContextualAds$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 201
    invoke-virtual {p1}, Landroid/adservices/adselection/SignedContextualAds;->getDecisionLogicUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SignedContextualAds$Builder;->mDecisionLogicUri:Landroid/net/Uri;

    .line 202
    invoke-virtual {p1}, Landroid/adservices/adselection/SignedContextualAds;->getAdsWithBid()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SignedContextualAds$Builder;->mAdsWithBid:Ljava/util/List;

    .line 203
    invoke-virtual {p1}, Landroid/adservices/adselection/SignedContextualAds;->getSignature()[B

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SignedContextualAds$Builder;->mSignature:[B

    .line 204
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/adselection/SignedContextualAds;
    .registers 9

    .line 261
    iget-object v0, p0, Landroid/adservices/adselection/SignedContextualAds$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    const-string v1, "Buyer cannot be null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Landroid/adservices/adselection/SignedContextualAds$Builder;->mDecisionLogicUri:Landroid/net/Uri;

    const-string v1, "DecisionLogicUri cannot be null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Landroid/adservices/adselection/SignedContextualAds$Builder;->mAdsWithBid:Ljava/util/List;

    const-string v1, "AdsWithBid cannot be null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Landroid/adservices/adselection/SignedContextualAds$Builder;->mSignature:[B

    const-string v1, "Signature cannot be null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    new-instance v2, Landroid/adservices/adselection/SignedContextualAds;

    iget-object v3, p0, Landroid/adservices/adselection/SignedContextualAds$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    iget-object v4, p0, Landroid/adservices/adselection/SignedContextualAds$Builder;->mDecisionLogicUri:Landroid/net/Uri;

    iget-object v5, p0, Landroid/adservices/adselection/SignedContextualAds$Builder;->mAdsWithBid:Ljava/util/List;

    iget-object v6, p0, Landroid/adservices/adselection/SignedContextualAds$Builder;->mSignature:[B

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/adservices/adselection/SignedContextualAds;-><init>(Landroid/adservices/common/AdTechIdentifier;Landroid/net/Uri;Ljava/util/List;[BLandroid/adservices/adselection/SignedContextualAds-IA;)V

    return-object v2
.end method

.method public whitelist setAdsWithBid(Ljava/util/List;)Landroid/adservices/adselection/SignedContextualAds$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/adselection/AdWithBid;",
            ">;)",
            "Landroid/adservices/adselection/SignedContextualAds$Builder;"
        }
    .end annotation

    .line 239
    .local p1, "adsWithBid":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/adselection/AdWithBid;>;"
    const-string v0, "AdsWithBid cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    iput-object p1, p0, Landroid/adservices/adselection/SignedContextualAds$Builder;->mAdsWithBid:Ljava/util/List;

    .line 242
    return-object p0
.end method

.method public whitelist setBuyer(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/SignedContextualAds$Builder;
    .registers 3
    .param p1, "buyer"    # Landroid/adservices/common/AdTechIdentifier;

    .line 213
    const-string v0, "Buyer cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 215
    iput-object p1, p0, Landroid/adservices/adselection/SignedContextualAds$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 216
    return-object p0
.end method

.method public whitelist setDecisionLogicUri(Landroid/net/Uri;)Landroid/adservices/adselection/SignedContextualAds$Builder;
    .registers 3
    .param p1, "decisionLogicUri"    # Landroid/net/Uri;

    .line 226
    const-string v0, "DecisionLogicUri cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 228
    iput-object p1, p0, Landroid/adservices/adselection/SignedContextualAds$Builder;->mDecisionLogicUri:Landroid/net/Uri;

    .line 229
    return-object p0
.end method

.method public whitelist setSignature([B)Landroid/adservices/adselection/SignedContextualAds$Builder;
    .registers 3
    .param p1, "signature"    # [B

    .line 248
    const-string v0, "Signature cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 250
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SignedContextualAds$Builder;->mSignature:[B

    .line 251
    return-object p0
.end method

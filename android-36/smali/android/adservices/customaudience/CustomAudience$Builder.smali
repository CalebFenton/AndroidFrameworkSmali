.class public final Landroid/adservices/customaudience/CustomAudience$Builder;
.super Ljava/lang/Object;
.source "CustomAudience.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/customaudience/CustomAudience;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActivationTime:Ljava/time/Instant;

.field private blacklist mAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/common/AdData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAuctionServerRequestFlags:I

.field private blacklist mBiddingLogicUri:Landroid/net/Uri;

.field private blacklist mBuyer:Landroid/adservices/common/AdTechIdentifier;

.field private blacklist mComponentAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/common/ComponentAdData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDailyUpdateUri:Landroid/net/Uri;

.field private blacklist mExpirationTime:Ljava/time/Instant;

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mPriority:D

.field private blacklist mTrustedBiddingData:Landroid/adservices/customaudience/TrustedBiddingData;

.field private blacklist mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivationTime(Landroid/adservices/customaudience/CustomAudience$Builder;)Ljava/time/Instant;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mActivationTime:Ljava/time/Instant;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAds(Landroid/adservices/customaudience/CustomAudience$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mAds:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuctionServerRequestFlags(Landroid/adservices/customaudience/CustomAudience$Builder;)I
    .registers 1

    iget p0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mAuctionServerRequestFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBiddingLogicUri(Landroid/adservices/customaudience/CustomAudience$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mBiddingLogicUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBuyer(Landroid/adservices/customaudience/CustomAudience$Builder;)Landroid/adservices/common/AdTechIdentifier;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmComponentAds(Landroid/adservices/customaudience/CustomAudience$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mComponentAds:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDailyUpdateUri(Landroid/adservices/customaudience/CustomAudience$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mDailyUpdateUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpirationTime(Landroid/adservices/customaudience/CustomAudience$Builder;)Ljava/time/Instant;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mExpirationTime:Ljava/time/Instant;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/adservices/customaudience/CustomAudience$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPriority(Landroid/adservices/customaudience/CustomAudience$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mPriority:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTrustedBiddingData(Landroid/adservices/customaudience/CustomAudience$Builder;)Landroid/adservices/customaudience/TrustedBiddingData;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mTrustedBiddingData:Landroid/adservices/customaudience/TrustedBiddingData;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserBiddingSignals(Landroid/adservices/customaudience/CustomAudience$Builder;)Landroid/adservices/common/AdSelectionSignals;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/customaudience/CustomAudience;
    .registers 3

    .line 620
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    const-string v1, "The buyer has not been provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 621
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mName:Ljava/lang/String;

    const-string v1, "The name has not been provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 622
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mDailyUpdateUri:Landroid/net/Uri;

    const-string v1, "The daily update URI has not been provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 623
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mBiddingLogicUri:Landroid/net/Uri;

    const-string v1, "The bidding logic URI has not been provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 626
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mAds:Ljava/util/List;

    if-nez v0, :cond_26

    .line 627
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mAds:Ljava/util/List;

    .line 629
    :cond_26
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mComponentAds:Ljava/util/List;

    if-nez v0, :cond_30

    .line 630
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mComponentAds:Ljava/util/List;

    .line 633
    :cond_30
    new-instance v0, Landroid/adservices/customaudience/CustomAudience;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/customaudience/CustomAudience;-><init>(Landroid/adservices/customaudience/CustomAudience$Builder;Landroid/adservices/customaudience/CustomAudience-IA;)V

    return-object v0
.end method

.method public whitelist setActivationTime(Ljava/time/Instant;)Landroid/adservices/customaudience/CustomAudience$Builder;
    .registers 2
    .param p1, "activationTime"    # Ljava/time/Instant;

    .line 495
    iput-object p1, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mActivationTime:Ljava/time/Instant;

    .line 496
    return-object p0
.end method

.method public whitelist setAds(Ljava/util/List;)Landroid/adservices/customaudience/CustomAudience$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/common/AdData;",
            ">;)",
            "Landroid/adservices/customaudience/CustomAudience$Builder;"
        }
    .end annotation

    .line 568
    .local p1, "ads":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/common/AdData;>;"
    iput-object p1, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mAds:Ljava/util/List;

    .line 569
    return-object p0
.end method

.method public whitelist setAuctionServerRequestFlags(I)Landroid/adservices/customaudience/CustomAudience$Builder;
    .registers 2
    .param p1, "auctionServerRequestFlags"    # I

    .line 595
    iput p1, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mAuctionServerRequestFlags:I

    .line 596
    return-object p0
.end method

.method public whitelist setBiddingLogicUri(Landroid/net/Uri;)Landroid/adservices/customaudience/CustomAudience$Builder;
    .registers 2
    .param p1, "biddingLogicUri"    # Landroid/net/Uri;

    .line 555
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iput-object p1, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mBiddingLogicUri:Landroid/net/Uri;

    .line 557
    return-object p0
.end method

.method public whitelist setBuyer(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/customaudience/CustomAudience$Builder;
    .registers 2
    .param p1, "buyer"    # Landroid/adservices/common/AdTechIdentifier;

    .line 467
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iput-object p1, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 469
    return-object p0
.end method

.method public whitelist setComponentAds(Ljava/util/List;)Landroid/adservices/customaudience/CustomAudience$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/common/ComponentAdData;",
            ">;)",
            "Landroid/adservices/customaudience/CustomAudience$Builder;"
        }
    .end annotation

    .line 580
    .local p1, "componentAds":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/common/ComponentAdData;>;"
    nop

    .line 581
    const-string v0, "The component ads provided are null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mComponentAds:Ljava/util/List;

    .line 582
    return-object p0
.end method

.method public whitelist setDailyUpdateUri(Landroid/net/Uri;)Landroid/adservices/customaudience/CustomAudience$Builder;
    .registers 2
    .param p1, "dailyUpdateUri"    # Landroid/net/Uri;

    .line 518
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    iput-object p1, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mDailyUpdateUri:Landroid/net/Uri;

    .line 520
    return-object p0
.end method

.method public whitelist setExpirationTime(Ljava/time/Instant;)Landroid/adservices/customaudience/CustomAudience$Builder;
    .registers 2
    .param p1, "expirationTime"    # Ljava/time/Instant;

    .line 507
    iput-object p1, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mExpirationTime:Ljava/time/Instant;

    .line 508
    return-object p0
.end method

.method public whitelist setName(Ljava/lang/String;)Landroid/adservices/customaudience/CustomAudience$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 479
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iput-object p1, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mName:Ljava/lang/String;

    .line 481
    return-object p0
.end method

.method public whitelist setPriority(D)Landroid/adservices/customaudience/CustomAudience$Builder;
    .registers 3
    .param p1, "priority"    # D

    .line 607
    iput-wide p1, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mPriority:D

    .line 608
    return-object p0
.end method

.method public whitelist setTrustedBiddingData(Landroid/adservices/customaudience/TrustedBiddingData;)Landroid/adservices/customaudience/CustomAudience$Builder;
    .registers 2
    .param p1, "trustedBiddingData"    # Landroid/adservices/customaudience/TrustedBiddingData;

    .line 543
    iput-object p1, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mTrustedBiddingData:Landroid/adservices/customaudience/TrustedBiddingData;

    .line 544
    return-object p0
.end method

.method public whitelist setUserBiddingSignals(Landroid/adservices/common/AdSelectionSignals;)Landroid/adservices/customaudience/CustomAudience$Builder;
    .registers 2
    .param p1, "userBiddingSignals"    # Landroid/adservices/common/AdSelectionSignals;

    .line 531
    iput-object p1, p0, Landroid/adservices/customaudience/CustomAudience$Builder;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 532
    return-object p0
.end method

.class public final Landroid/telephony/CarrierRestrictionRules$Builder;
.super Ljava/lang/Object;
.source "CarrierRestrictionRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierRestrictionRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mRules:Landroid/telephony/CarrierRestrictionRules;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    new-instance v0, Landroid/telephony/CarrierRestrictionRules;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/CarrierRestrictionRules;-><init>(Landroid/telephony/CarrierRestrictionRules-IA;)V

    iput-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    .line 495
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/CarrierRestrictionRules;
    .registers 2

    .line 499
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    return-object v0
.end method

.method public whitelist setAllCarriersAllowed()Landroid/telephony/CarrierRestrictionRules$Builder;
    .registers 3

    .line 506
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fgetmAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 507
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fgetmExcludedCarriers(Landroid/telephony/CarrierRestrictionRules;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 508
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmCarrierRestrictionDefault(Landroid/telephony/CarrierRestrictionRules;I)V

    .line 509
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->carrierRestrictionRulesEnhancement()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 510
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmCarrierRestrictionStatus(Landroid/telephony/CarrierRestrictionRules;I)V

    .line 512
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fgetmAllowedCarrierInfo(Landroid/telephony/CarrierRestrictionRules;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 513
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fgetmExcludedCarrierInfo(Landroid/telephony/CarrierRestrictionRules;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 514
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmUseCarrierLockInfo(Landroid/telephony/CarrierRestrictionRules;Z)V

    .line 516
    :cond_3b
    return-object p0
.end method

.method public blacklist setAllowedCarrierInfo(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CarrierInfo;",
            ">;)",
            "Landroid/telephony/CarrierRestrictionRules$Builder;"
        }
    .end annotation

    .line 583
    .local p1, "allowedCarrierInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CarrierInfo;>;"
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmAllowedCarrierInfo(Landroid/telephony/CarrierRestrictionRules;Ljava/util/List;)V

    .line 584
    return-object p0
.end method

.method public whitelist setAllowedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)",
            "Landroid/telephony/CarrierRestrictionRules$Builder;"
        }
    .end annotation

    .line 526
    .local p1, "allowedCarriers":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;Ljava/util/List;)V

    .line 527
    return-object p0
.end method

.method public blacklist setCarrierLockInfoFeature(Z)Landroid/telephony/CarrierRestrictionRules$Builder;
    .registers 3
    .param p1, "carrierLockInfoSupported"    # Z

    .line 606
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0, p1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmUseCarrierLockInfo(Landroid/telephony/CarrierRestrictionRules;Z)V

    .line 607
    return-object p0
.end method

.method public blacklist setCarrierRestrictionStatus(I)Landroid/telephony/CarrierRestrictionRules$Builder;
    .registers 3
    .param p1, "carrierRestrictionStatus"    # I

    .line 571
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0, p1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmCarrierRestrictionStatus(Landroid/telephony/CarrierRestrictionRules;I)V

    .line 572
    return-object p0
.end method

.method public whitelist setDefaultCarrierRestriction(I)Landroid/telephony/CarrierRestrictionRules$Builder;
    .registers 3
    .param p1, "carrierRestrictionDefault"    # I

    .line 548
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0, p1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmCarrierRestrictionDefault(Landroid/telephony/CarrierRestrictionRules;I)V

    .line 549
    return-object p0
.end method

.method public blacklist setExcludedCarrierInfo(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CarrierInfo;",
            ">;)",
            "Landroid/telephony/CarrierRestrictionRules$Builder;"
        }
    .end annotation

    .line 595
    .local p1, "excludedCarrierInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CarrierInfo;>;"
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmExcludedCarrierInfo(Landroid/telephony/CarrierRestrictionRules;Ljava/util/List;)V

    .line 596
    return-object p0
.end method

.method public whitelist setExcludedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)",
            "Landroid/telephony/CarrierRestrictionRules$Builder;"
        }
    .end annotation

    .line 537
    .local p1, "excludedCarriers":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmExcludedCarriers(Landroid/telephony/CarrierRestrictionRules;Ljava/util/List;)V

    .line 538
    return-object p0
.end method

.method public whitelist setMultiSimPolicy(I)Landroid/telephony/CarrierRestrictionRules$Builder;
    .registers 3
    .param p1, "multiSimPolicy"    # I

    .line 558
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules$Builder;->mRules:Landroid/telephony/CarrierRestrictionRules;

    invoke-static {v0, p1}, Landroid/telephony/CarrierRestrictionRules;->-$$Nest$fputmMultiSimPolicy(Landroid/telephony/CarrierRestrictionRules;I)V

    .line 559
    return-object p0
.end method

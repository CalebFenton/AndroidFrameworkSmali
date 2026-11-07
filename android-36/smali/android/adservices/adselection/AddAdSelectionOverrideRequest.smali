.class public Landroid/adservices/adselection/AddAdSelectionOverrideRequest;
.super Ljava/lang/Object;
.source "AddAdSelectionOverrideRequest.java"


# instance fields
.field private final blacklist mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

.field private final blacklist mDecisionLogicJs:Ljava/lang/String;

.field private final blacklist mPerBuyerDecisionLogic:Landroid/adservices/adselection/PerBuyerDecisionLogic;

.field private final blacklist mTrustedScoringSignals:Landroid/adservices/common/AdSelectionSignals;


# direct methods
.method public constructor whitelist <init>(Landroid/adservices/adselection/AdSelectionConfig;Ljava/lang/String;Landroid/adservices/common/AdSelectionSignals;)V
    .registers 5
    .param p1, "adSelectionConfig"    # Landroid/adservices/adselection/AdSelectionConfig;
    .param p2, "decisionLogicJs"    # Ljava/lang/String;
    .param p3, "trustedScoringSignals"    # Landroid/adservices/common/AdSelectionSignals;

    .line 88
    sget-object v0, Landroid/adservices/adselection/PerBuyerDecisionLogic;->EMPTY:Landroid/adservices/adselection/PerBuyerDecisionLogic;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/adservices/adselection/AddAdSelectionOverrideRequest;-><init>(Landroid/adservices/adselection/AdSelectionConfig;Ljava/lang/String;Landroid/adservices/common/AdSelectionSignals;Landroid/adservices/adselection/PerBuyerDecisionLogic;)V

    .line 93
    return-void
.end method

.method public constructor whitelist <init>(Landroid/adservices/adselection/AdSelectionConfig;Ljava/lang/String;Landroid/adservices/common/AdSelectionSignals;Landroid/adservices/adselection/PerBuyerDecisionLogic;)V
    .registers 5
    .param p1, "adSelectionConfig"    # Landroid/adservices/adselection/AdSelectionConfig;
    .param p2, "decisionLogicJs"    # Ljava/lang/String;
    .param p3, "trustedScoringSignals"    # Landroid/adservices/common/AdSelectionSignals;
    .param p4, "perBuyerDecisionLogic"    # Landroid/adservices/adselection/PerBuyerDecisionLogic;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iput-object p1, p0, Landroid/adservices/adselection/AddAdSelectionOverrideRequest;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    .line 70
    iput-object p2, p0, Landroid/adservices/adselection/AddAdSelectionOverrideRequest;->mDecisionLogicJs:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Landroid/adservices/adselection/AddAdSelectionOverrideRequest;->mTrustedScoringSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 72
    iput-object p4, p0, Landroid/adservices/adselection/AddAdSelectionOverrideRequest;->mPerBuyerDecisionLogic:Landroid/adservices/adselection/PerBuyerDecisionLogic;

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist getAdSelectionConfig()Landroid/adservices/adselection/AdSelectionConfig;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/adservices/adselection/AddAdSelectionOverrideRequest;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    return-object v0
.end method

.method public whitelist getDecisionLogicJs()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/adservices/adselection/AddAdSelectionOverrideRequest;->mDecisionLogicJs:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPerBuyerDecisionLogic()Landroid/adservices/adselection/PerBuyerDecisionLogic;
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/adservices/adselection/AddAdSelectionOverrideRequest;->mPerBuyerDecisionLogic:Landroid/adservices/adselection/PerBuyerDecisionLogic;

    return-object v0
.end method

.method public whitelist getTrustedScoringSignals()Landroid/adservices/common/AdSelectionSignals;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/adservices/adselection/AddAdSelectionOverrideRequest;->mTrustedScoringSignals:Landroid/adservices/common/AdSelectionSignals;

    return-object v0
.end method

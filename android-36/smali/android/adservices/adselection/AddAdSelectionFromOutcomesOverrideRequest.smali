.class public Landroid/adservices/adselection/AddAdSelectionFromOutcomesOverrideRequest;
.super Ljava/lang/Object;
.source "AddAdSelectionFromOutcomesOverrideRequest.java"


# instance fields
.field private final blacklist mAdSelectionFromOutcomesConfig:Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

.field private final blacklist mOutcomeSelectionLogicJs:Ljava/lang/String;

.field private final blacklist mOutcomeSelectionTrustedSignals:Landroid/adservices/common/AdSelectionSignals;


# direct methods
.method public constructor whitelist <init>(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;Ljava/lang/String;Landroid/adservices/common/AdSelectionSignals;)V
    .registers 4
    .param p1, "adSelectionFromOutcomesConfig"    # Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;
    .param p2, "outcomeSelectionLogicJs"    # Ljava/lang/String;
    .param p3, "outcomeSelectionTrustedSignals"    # Landroid/adservices/common/AdSelectionSignals;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Landroid/adservices/adselection/AddAdSelectionFromOutcomesOverrideRequest;->mAdSelectionFromOutcomesConfig:Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    .line 51
    iput-object p2, p0, Landroid/adservices/adselection/AddAdSelectionFromOutcomesOverrideRequest;->mOutcomeSelectionLogicJs:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Landroid/adservices/adselection/AddAdSelectionFromOutcomesOverrideRequest;->mOutcomeSelectionTrustedSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist getAdSelectionFromOutcomesConfig()Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/adservices/adselection/AddAdSelectionFromOutcomesOverrideRequest;->mAdSelectionFromOutcomesConfig:Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    return-object v0
.end method

.method public whitelist getOutcomeSelectionLogicJs()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/adservices/adselection/AddAdSelectionFromOutcomesOverrideRequest;->mOutcomeSelectionLogicJs:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOutcomeSelectionTrustedSignals()Landroid/adservices/common/AdSelectionSignals;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/adservices/adselection/AddAdSelectionFromOutcomesOverrideRequest;->mOutcomeSelectionTrustedSignals:Landroid/adservices/common/AdSelectionSignals;

    return-object v0
.end method

.class public Landroid/adservices/adselection/RemoveAdSelectionFromOutcomesOverrideRequest;
.super Ljava/lang/Object;
.source "RemoveAdSelectionFromOutcomesOverrideRequest.java"


# instance fields
.field private final blacklist mAdSelectionFromOutcomesConfig:Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;


# direct methods
.method public constructor whitelist <init>(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;)V
    .registers 2
    .param p1, "config"    # Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/adservices/adselection/RemoveAdSelectionFromOutcomesOverrideRequest;->mAdSelectionFromOutcomesConfig:Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist getAdSelectionFromOutcomesConfig()Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;
    .registers 2

    .line 42
    iget-object v0, p0, Landroid/adservices/adselection/RemoveAdSelectionFromOutcomesOverrideRequest;->mAdSelectionFromOutcomesConfig:Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    return-object v0
.end method

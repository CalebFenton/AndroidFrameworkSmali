.class public Landroid/adservices/adselection/RemoveAdSelectionOverrideRequest;
.super Ljava/lang/Object;
.source "RemoveAdSelectionOverrideRequest.java"


# instance fields
.field private final blacklist mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;


# direct methods
.method public constructor whitelist <init>(Landroid/adservices/adselection/AdSelectionConfig;)V
    .registers 2
    .param p1, "adSelectionConfig"    # Landroid/adservices/adselection/AdSelectionConfig;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/adservices/adselection/RemoveAdSelectionOverrideRequest;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist getAdSelectionConfig()Landroid/adservices/adselection/AdSelectionConfig;
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/adservices/adselection/RemoveAdSelectionOverrideRequest;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    return-object v0
.end method

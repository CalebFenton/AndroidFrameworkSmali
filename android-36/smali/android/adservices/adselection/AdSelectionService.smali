.class public interface abstract Landroid/adservices/adselection/AdSelectionService;
.super Ljava/lang/Object;
.source "AdSelectionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/AdSelectionService$Stub;,
        Landroid/adservices/adselection/AdSelectionService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.adselection.AdSelectionService"


# virtual methods
.method public abstract blacklist getAdSelectionData(Landroid/adservices/adselection/GetAdSelectionDataInput;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adselection/GetAdSelectionDataCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist overrideAdSelectionConfigRemoteInfo(Landroid/adservices/adselection/AdSelectionConfig;Ljava/lang/String;Landroid/adservices/common/AdSelectionSignals;Landroid/adservices/adselection/PerBuyerDecisionLogic;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist overrideAdSelectionFromOutcomesConfigRemoteInfo(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;Ljava/lang/String;Landroid/adservices/common/AdSelectionSignals;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist persistAdSelectionResult(Landroid/adservices/adselection/PersistAdSelectionResultInput;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adselection/PersistAdSelectionResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeAdCounterHistogramOverride(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeAdSelectionConfigRemoteInfoOverride(Landroid/adservices/adselection/AdSelectionConfig;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeAdSelectionFromOutcomesConfigRemoteInfoOverride(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist reportImpression(Landroid/adservices/adselection/ReportImpressionInput;Landroid/adservices/adselection/ReportImpressionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist reportInteraction(Landroid/adservices/adselection/ReportInteractionInput;Landroid/adservices/adselection/ReportInteractionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist resetAllAdCounterHistogramOverrides(Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist resetAllAdSelectionConfigRemoteOverrides(Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist resetAllAdSelectionFromOutcomesConfigRemoteOverrides(Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist selectAds(Landroid/adservices/adselection/AdSelectionInput;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adselection/AdSelectionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist selectAdsFromOutcomes(Landroid/adservices/adselection/AdSelectionFromOutcomesInput;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adselection/AdSelectionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setAdCounterHistogramOverride(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setAppInstallAdvertisers(Landroid/adservices/adselection/SetAppInstallAdvertisersInput;Landroid/adservices/adselection/SetAppInstallAdvertisersCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateAdCounterHistogram(Landroid/adservices/adselection/UpdateAdCounterHistogramInput;Landroid/adservices/adselection/UpdateAdCounterHistogramCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public Landroid/adservices/adselection/AdSelectionService$Default;
.super Ljava/lang/Object;
.source "AdSelectionService.java"

# interfaces
.implements Landroid/adservices/adselection/AdSelectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/AdSelectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAdSelectionData(Landroid/adservices/adselection/GetAdSelectionDataInput;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adselection/GetAdSelectionDataCallback;)V
    .registers 4
    .param p1, "request"    # Landroid/adservices/adselection/GetAdSelectionDataInput;
    .param p2, "callerMetadata"    # Landroid/adservices/common/CallerMetadata;
    .param p3, "callback"    # Landroid/adservices/adselection/GetAdSelectionDataCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist overrideAdSelectionConfigRemoteInfo(Landroid/adservices/adselection/AdSelectionConfig;Ljava/lang/String;Landroid/adservices/common/AdSelectionSignals;Landroid/adservices/adselection/PerBuyerDecisionLogic;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    .registers 6
    .param p1, "adSelectionConfig"    # Landroid/adservices/adselection/AdSelectionConfig;
    .param p2, "decisionLogicJS"    # Ljava/lang/String;
    .param p3, "trustedScoringSignals"    # Landroid/adservices/common/AdSelectionSignals;
    .param p4, "perBuyerDecisionLogic"    # Landroid/adservices/adselection/PerBuyerDecisionLogic;
    .param p5, "callback"    # Landroid/adservices/adselection/AdSelectionOverrideCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    return-void
.end method

.method public blacklist overrideAdSelectionFromOutcomesConfigRemoteInfo(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;Ljava/lang/String;Landroid/adservices/common/AdSelectionSignals;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    .registers 5
    .param p1, "adSelectionFromOutcomesConfig"    # Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;
    .param p2, "selectionLogicJs"    # Ljava/lang/String;
    .param p3, "selectionSignals"    # Landroid/adservices/common/AdSelectionSignals;
    .param p4, "callback"    # Landroid/adservices/adselection/AdSelectionOverrideCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    return-void
.end method

.method public blacklist persistAdSelectionResult(Landroid/adservices/adselection/PersistAdSelectionResultInput;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adselection/PersistAdSelectionResultCallback;)V
    .registers 4
    .param p1, "request"    # Landroid/adservices/adselection/PersistAdSelectionResultInput;
    .param p2, "callerMetadata"    # Landroid/adservices/common/CallerMetadata;
    .param p3, "callback"    # Landroid/adservices/adselection/PersistAdSelectionResultCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist removeAdCounterHistogramOverride(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    .registers 3
    .param p1, "inputParams"    # Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;
    .param p2, "callback"    # Landroid/adservices/adselection/AdSelectionOverrideCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    return-void
.end method

.method public blacklist removeAdSelectionConfigRemoteInfoOverride(Landroid/adservices/adselection/AdSelectionConfig;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    .registers 3
    .param p1, "adSelectionConfig"    # Landroid/adservices/adselection/AdSelectionConfig;
    .param p2, "callback"    # Landroid/adservices/adselection/AdSelectionOverrideCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    return-void
.end method

.method public blacklist removeAdSelectionFromOutcomesConfigRemoteInfoOverride(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    .registers 3
    .param p1, "adSelectionFromOutcomesConfig"    # Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;
    .param p2, "callback"    # Landroid/adservices/adselection/AdSelectionOverrideCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    return-void
.end method

.method public blacklist reportImpression(Landroid/adservices/adselection/ReportImpressionInput;Landroid/adservices/adselection/ReportImpressionCallback;)V
    .registers 3
    .param p1, "request"    # Landroid/adservices/adselection/ReportImpressionInput;
    .param p2, "callback"    # Landroid/adservices/adselection/ReportImpressionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    return-void
.end method

.method public blacklist reportInteraction(Landroid/adservices/adselection/ReportInteractionInput;Landroid/adservices/adselection/ReportInteractionCallback;)V
    .registers 3
    .param p1, "inputParams"    # Landroid/adservices/adselection/ReportInteractionInput;
    .param p2, "callback"    # Landroid/adservices/adselection/ReportInteractionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    return-void
.end method

.method public blacklist resetAllAdCounterHistogramOverrides(Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/adservices/adselection/AdSelectionOverrideCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    return-void
.end method

.method public blacklist resetAllAdSelectionConfigRemoteOverrides(Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/adservices/adselection/AdSelectionOverrideCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    return-void
.end method

.method public blacklist resetAllAdSelectionFromOutcomesConfigRemoteOverrides(Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/adservices/adselection/AdSelectionOverrideCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    return-void
.end method

.method public blacklist selectAds(Landroid/adservices/adselection/AdSelectionInput;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adselection/AdSelectionCallback;)V
    .registers 4
    .param p1, "request"    # Landroid/adservices/adselection/AdSelectionInput;
    .param p2, "callerMetadata"    # Landroid/adservices/common/CallerMetadata;
    .param p3, "callback"    # Landroid/adservices/adselection/AdSelectionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public blacklist selectAdsFromOutcomes(Landroid/adservices/adselection/AdSelectionFromOutcomesInput;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adselection/AdSelectionCallback;)V
    .registers 4
    .param p1, "inputParams"    # Landroid/adservices/adselection/AdSelectionFromOutcomesInput;
    .param p2, "callerMetadata"    # Landroid/adservices/common/CallerMetadata;
    .param p3, "callback"    # Landroid/adservices/adselection/AdSelectionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public blacklist setAdCounterHistogramOverride(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    .registers 3
    .param p1, "inputParams"    # Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;
    .param p2, "callback"    # Landroid/adservices/adselection/AdSelectionOverrideCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    return-void
.end method

.method public blacklist setAppInstallAdvertisers(Landroid/adservices/adselection/SetAppInstallAdvertisersInput;Landroid/adservices/adselection/SetAppInstallAdvertisersCallback;)V
    .registers 3
    .param p1, "request"    # Landroid/adservices/adselection/SetAppInstallAdvertisersInput;
    .param p2, "callback"    # Landroid/adservices/adselection/SetAppInstallAdvertisersCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    return-void
.end method

.method public blacklist updateAdCounterHistogram(Landroid/adservices/adselection/UpdateAdCounterHistogramInput;Landroid/adservices/adselection/UpdateAdCounterHistogramCallback;)V
    .registers 3
    .param p1, "inputParams"    # Landroid/adservices/adselection/UpdateAdCounterHistogramInput;
    .param p2, "callback"    # Landroid/adservices/adselection/UpdateAdCounterHistogramCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    return-void
.end method

.class public Landroid/adservices/customaudience/ICustomAudienceService$Default;
.super Ljava/lang/Object;
.source "ICustomAudienceService.java"

# interfaces
.implements Landroid/adservices/customaudience/ICustomAudienceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/customaudience/ICustomAudienceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist fetchAndJoinCustomAudience(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;Landroid/adservices/customaudience/FetchAndJoinCustomAudienceCallback;)V
    .registers 3
    .param p1, "input"    # Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;
    .param p2, "callback"    # Landroid/adservices/customaudience/FetchAndJoinCustomAudienceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist joinCustomAudience(Landroid/adservices/customaudience/CustomAudience;Ljava/lang/String;Landroid/adservices/customaudience/ICustomAudienceCallback;)V
    .registers 4
    .param p1, "customAudience"    # Landroid/adservices/customaudience/CustomAudience;
    .param p2, "ownerPackageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/adservices/customaudience/ICustomAudienceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist leaveCustomAudience(Ljava/lang/String;Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/adservices/customaudience/ICustomAudienceCallback;)V
    .registers 5
    .param p1, "ownerPackageName"    # Ljava/lang/String;
    .param p2, "buyer"    # Landroid/adservices/common/AdTechIdentifier;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/adservices/customaudience/ICustomAudienceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist overrideCustomAudienceRemoteInfo(Ljava/lang/String;Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Ljava/lang/String;JLandroid/adservices/common/AdSelectionSignals;Landroid/adservices/customaudience/CustomAudienceOverrideCallback;)V
    .registers 9
    .param p1, "ownerPackageName"    # Ljava/lang/String;
    .param p2, "buyer"    # Landroid/adservices/common/AdTechIdentifier;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "biddingLogicJS"    # Ljava/lang/String;
    .param p5, "biddingLogicJsVersion"    # J
    .param p7, "trustedBiddingData"    # Landroid/adservices/common/AdSelectionSignals;
    .param p8, "callback"    # Landroid/adservices/customaudience/CustomAudienceOverrideCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist removeCustomAudienceRemoteInfoOverride(Ljava/lang/String;Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/adservices/customaudience/CustomAudienceOverrideCallback;)V
    .registers 5
    .param p1, "ownerPackageName"    # Ljava/lang/String;
    .param p2, "buyer"    # Landroid/adservices/common/AdTechIdentifier;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/adservices/customaudience/CustomAudienceOverrideCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist resetAllCustomAudienceOverrides(Landroid/adservices/customaudience/CustomAudienceOverrideCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/adservices/customaudience/CustomAudienceOverrideCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public blacklist scheduleCustomAudienceUpdate(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateCallback;)V
    .registers 3
    .param p1, "input"    # Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;
    .param p2, "callback"    # Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

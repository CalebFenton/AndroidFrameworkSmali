.class public interface abstract Landroid/adservices/customaudience/ICustomAudienceService;
.super Ljava/lang/Object;
.source "ICustomAudienceService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/customaudience/ICustomAudienceService$Stub;,
        Landroid/adservices/customaudience/ICustomAudienceService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.customaudience.ICustomAudienceService"


# virtual methods
.method public abstract blacklist fetchAndJoinCustomAudience(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;Landroid/adservices/customaudience/FetchAndJoinCustomAudienceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist joinCustomAudience(Landroid/adservices/customaudience/CustomAudience;Ljava/lang/String;Landroid/adservices/customaudience/ICustomAudienceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist leaveCustomAudience(Ljava/lang/String;Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/adservices/customaudience/ICustomAudienceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist overrideCustomAudienceRemoteInfo(Ljava/lang/String;Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Ljava/lang/String;JLandroid/adservices/common/AdSelectionSignals;Landroid/adservices/customaudience/CustomAudienceOverrideCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeCustomAudienceRemoteInfoOverride(Ljava/lang/String;Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/adservices/customaudience/CustomAudienceOverrideCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist resetAllCustomAudienceOverrides(Landroid/adservices/customaudience/CustomAudienceOverrideCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist scheduleCustomAudienceUpdate(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

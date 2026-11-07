.class public interface abstract Landroid/adservices/common/IAdServicesCommonService;
.super Ljava/lang/Object;
.source "IAdServicesCommonService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/IAdServicesCommonService$Stub;,
        Landroid/adservices/common/IAdServicesCommonService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.common.IAdServicesCommonService"


# virtual methods
.method public abstract blacklist enableAdServices(Landroid/adservices/common/AdServicesStates;Landroid/adservices/common/IEnableAdServicesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getAdServicesCommonStates(Landroid/adservices/common/GetAdServicesCommonStatesParams;Landroid/adservices/common/CallerMetadata;Landroid/adservices/common/IAdServicesCommonStatesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isAdServicesEnabled(Landroid/adservices/common/IAdServicesCommonCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist requestAdServicesModuleOverrides(Landroid/adservices/common/UpdateAdServicesModuleStatesParams;Landroid/adservices/common/IRequestAdServicesModuleOverridesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist requestAdServicesModuleUserChoices(Landroid/adservices/common/UpdateAdServicesUserChoicesParams;Landroid/adservices/common/IRequestAdServicesModuleUserChoicesCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setAdServicesEnabled(ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateAdIdCache(Landroid/adservices/common/UpdateAdIdRequest;Landroid/adservices/common/IUpdateAdIdCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

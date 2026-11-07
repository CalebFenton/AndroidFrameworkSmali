.class public interface abstract Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService;
.super Ljava/lang/Object;
.source "IFederatedComputeService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService$Stub;,
        Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.ondevicepersonalization.aidl.IFederatedComputeService"


# virtual methods
.method public abstract blacklist cancel(Ljava/lang/String;Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist schedule(Landroid/federatedcompute/common/TrainingOptions;Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

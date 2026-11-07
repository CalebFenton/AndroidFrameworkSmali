.class public interface abstract Landroid/federatedcompute/aidl/IFederatedComputeService;
.super Ljava/lang/Object;
.source "IFederatedComputeService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/federatedcompute/aidl/IFederatedComputeService$Stub;,
        Landroid/federatedcompute/aidl/IFederatedComputeService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.federatedcompute.aidl.IFederatedComputeService"


# virtual methods
.method public abstract blacklist cancel(Landroid/content/ComponentName;Ljava/lang/String;Landroid/federatedcompute/aidl/IFederatedComputeCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist schedule(Ljava/lang/String;Landroid/federatedcompute/common/TrainingOptions;Landroid/federatedcompute/aidl/IFederatedComputeCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

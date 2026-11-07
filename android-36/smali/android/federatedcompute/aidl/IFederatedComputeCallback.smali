.class public interface abstract Landroid/federatedcompute/aidl/IFederatedComputeCallback;
.super Ljava/lang/Object;
.source "IFederatedComputeCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/federatedcompute/aidl/IFederatedComputeCallback$Stub;,
        Landroid/federatedcompute/aidl/IFederatedComputeCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.federatedcompute.aidl.IFederatedComputeCallback"


# virtual methods
.method public abstract blacklist onFailure(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

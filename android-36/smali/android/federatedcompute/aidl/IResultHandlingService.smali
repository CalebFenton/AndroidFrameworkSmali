.class public interface abstract Landroid/federatedcompute/aidl/IResultHandlingService;
.super Ljava/lang/Object;
.source "IResultHandlingService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/federatedcompute/aidl/IResultHandlingService$Stub;,
        Landroid/federatedcompute/aidl/IResultHandlingService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.federatedcompute.aidl.IResultHandlingService"


# virtual methods
.method public abstract blacklist handleResult(Landroid/os/Bundle;Landroid/federatedcompute/aidl/IFederatedComputeCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

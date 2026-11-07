.class public interface abstract Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;
.super Ljava/lang/Object;
.source "IIsolatedServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback$Stub;,
        Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.ondevicepersonalization.aidl.IIsolatedServiceCallback"


# virtual methods
.method public abstract blacklist onError(II[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

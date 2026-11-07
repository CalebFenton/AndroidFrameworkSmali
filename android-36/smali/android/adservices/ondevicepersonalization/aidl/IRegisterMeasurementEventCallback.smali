.class public interface abstract Landroid/adservices/ondevicepersonalization/aidl/IRegisterMeasurementEventCallback;
.super Ljava/lang/Object;
.source "IRegisterMeasurementEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/aidl/IRegisterMeasurementEventCallback$Stub;,
        Landroid/adservices/ondevicepersonalization/aidl/IRegisterMeasurementEventCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.ondevicepersonalization.aidl.IRegisterMeasurementEventCallback"


# virtual methods
.method public abstract blacklist onError(ILandroid/adservices/ondevicepersonalization/CalleeMetadata;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/adservices/ondevicepersonalization/CalleeMetadata;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

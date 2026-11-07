.class public interface abstract Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;
.super Ljava/lang/Object;
.source "IExecuteCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback$Stub;,
        Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.ondevicepersonalization.aidl.IExecuteCallback"


# virtual methods
.method public abstract blacklist onError(II[BLandroid/adservices/ondevicepersonalization/CalleeMetadata;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/CalleeMetadata;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

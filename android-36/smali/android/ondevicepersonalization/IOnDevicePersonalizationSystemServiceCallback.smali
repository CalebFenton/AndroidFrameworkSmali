.class public interface abstract Landroid/ondevicepersonalization/IOnDevicePersonalizationSystemServiceCallback;
.super Ljava/lang/Object;
.source "IOnDevicePersonalizationSystemServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ondevicepersonalization/IOnDevicePersonalizationSystemServiceCallback$Stub;,
        Landroid/ondevicepersonalization/IOnDevicePersonalizationSystemServiceCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.ondevicepersonalization.IOnDevicePersonalizationSystemServiceCallback"


# virtual methods
.method public abstract blacklist onError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResult(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

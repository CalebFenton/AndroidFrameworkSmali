.class public interface abstract Landroid/adservices/ondevicepersonalization/aidl/IIsolatedService;
.super Ljava/lang/Object;
.source "IIsolatedService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/aidl/IIsolatedService$Stub;,
        Landroid/adservices/ondevicepersonalization/aidl/IIsolatedService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.ondevicepersonalization.aidl.IIsolatedService"


# virtual methods
.method public abstract blacklist onRequest(ILandroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

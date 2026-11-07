.class public interface abstract Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;
.super Ljava/lang/Object;
.source "IIsolatedModelService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService$Stub;,
        Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.ondevicepersonalization.aidl.IIsolatedModelService"


# virtual methods
.method public abstract blacklist runInference(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

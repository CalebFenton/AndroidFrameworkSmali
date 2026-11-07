.class public interface abstract Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationDebugService;
.super Ljava/lang/Object;
.source "IOnDevicePersonalizationDebugService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationDebugService$Stub;,
        Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationDebugService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.ondevicepersonalization.aidl.IOnDevicePersonalizationDebugService"


# virtual methods
.method public abstract blacklist isEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

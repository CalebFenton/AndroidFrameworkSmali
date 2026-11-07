.class public interface abstract Landroid/ondevicepersonalization/IOnDevicePersonalizationSystemService;
.super Ljava/lang/Object;
.source "IOnDevicePersonalizationSystemService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ondevicepersonalization/IOnDevicePersonalizationSystemService$Stub;,
        Landroid/ondevicepersonalization/IOnDevicePersonalizationSystemService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.ondevicepersonalization.IOnDevicePersonalizationSystemService"


# virtual methods
.method public abstract blacklist onRequest(Landroid/os/Bundle;Landroid/ondevicepersonalization/IOnDevicePersonalizationSystemServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

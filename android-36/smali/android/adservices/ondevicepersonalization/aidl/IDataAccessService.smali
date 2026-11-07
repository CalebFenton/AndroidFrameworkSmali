.class public interface abstract Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;
.super Ljava/lang/Object;
.source "IDataAccessService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService$Stub;,
        Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.ondevicepersonalization.aidl.IDataAccessService"


# virtual methods
.method public abstract blacklist logApiCallStats(IJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRequest(ILandroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IDataAccessServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

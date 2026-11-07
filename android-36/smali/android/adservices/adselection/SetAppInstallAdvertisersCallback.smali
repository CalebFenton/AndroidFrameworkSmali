.class public interface abstract Landroid/adservices/adselection/SetAppInstallAdvertisersCallback;
.super Ljava/lang/Object;
.source "SetAppInstallAdvertisersCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/SetAppInstallAdvertisersCallback$Stub;,
        Landroid/adservices/adselection/SetAppInstallAdvertisersCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.adselection.SetAppInstallAdvertisersCallback"


# virtual methods
.method public abstract blacklist onFailure(Landroid/adservices/common/FledgeErrorResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

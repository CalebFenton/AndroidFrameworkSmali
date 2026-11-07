.class public interface abstract Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;
.super Ljava/lang/Object;
.source "IUdfpsRefreshRateRequestCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;,
        Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IUdfpsRefreshRateRequestCallback"


# virtual methods
.method public abstract blacklist onAuthenticationPossible(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRequestDisabled(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRequestEnabled(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Landroid/service/euicc/IGetOtaStatusCallback;
.super Ljava/lang/Object;
.source "IGetOtaStatusCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IGetOtaStatusCallback$Stub;,
        Landroid/service/euicc/IGetOtaStatusCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onSuccess(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

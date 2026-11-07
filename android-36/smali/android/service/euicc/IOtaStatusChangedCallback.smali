.class public interface abstract Landroid/service/euicc/IOtaStatusChangedCallback;
.super Ljava/lang/Object;
.source "IOtaStatusChangedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IOtaStatusChangedCallback$Stub;,
        Landroid/service/euicc/IOtaStatusChangedCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onOtaStatusChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Landroid/service/euicc/IGetEidCallback;
.super Ljava/lang/Object;
.source "IGetEidCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IGetEidCallback$Stub;,
        Landroid/service/euicc/IGetEidCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-r onSuccess(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

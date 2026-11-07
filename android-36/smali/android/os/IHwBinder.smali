.class public interface abstract Landroid/os/IHwBinder;
.super Ljava/lang/Object;
.source "IHwBinder.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHwBinder$DeathRecipient;
    }
.end annotation


# virtual methods
.method public abstract whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
.end method

.method public abstract whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
.end method

.method public abstract whitelist transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
.end method

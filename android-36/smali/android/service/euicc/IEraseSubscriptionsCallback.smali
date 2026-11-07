.class public interface abstract Landroid/service/euicc/IEraseSubscriptionsCallback;
.super Ljava/lang/Object;
.source "IEraseSubscriptionsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IEraseSubscriptionsCallback$Stub;,
        Landroid/service/euicc/IEraseSubscriptionsCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-r onComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

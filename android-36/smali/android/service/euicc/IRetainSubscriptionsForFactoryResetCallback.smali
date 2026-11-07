.class public interface abstract Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;
.super Ljava/lang/Object;
.source "IRetainSubscriptionsForFactoryResetCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback$Stub;,
        Landroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback$Default;
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
